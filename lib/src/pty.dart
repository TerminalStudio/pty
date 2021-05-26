import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:pty/pty.dart';
import 'package:pty/src/pty_core.dart';

abstract class BasePseudoTerminal implements PseudoTerminal {
  BasePseudoTerminal(this._core);

  late final PtyCore _core;

  @override
  bool kill([ProcessSignal signal = ProcessSignal.sigterm]) {
    return _core.kill(signal);
  }

  // int get pid {
  //   return _core.pid;
  // }

  @override
  void write(String input) {
    final data = utf8.encode(input);
    _core.write(data);
  }

  @override
  void resize(int width, int height) {
    _core.resize(width, height);
  }
}

/// A polling based PseudoTerminal implementation. Mainly used in flutter debug
/// mode to make hot reload work. The underlying PtyCore must be non-blocking.
class PollingPseudoTerminal extends BasePseudoTerminal {
  PollingPseudoTerminal(PtyCore _core) : super(_core);

  //initialize them late to avoid having any closures in the instance
  //so that this PollingPseudoTerminal can be passed to an Isolate
  late Completer<int> _exitCode;
  late StreamController<String> _out;
  bool _initialized = false;

  @override
  void init() {
    _exitCode = Completer<int>();
    _out = StreamController<String>();
    _initialized = true;
    Timer.run(() {
      _poll();
    });
  }

  List<int> _createDelayMicrosecondsStepList(
      Map<int, int> delayMicrosecondsToAmountMap) {
    final result = List<int>.empty(growable: true);
    final sortedKeys = delayMicrosecondsToAmountMap.keys.toList(growable: false)
      ..sort();
    for (final key in sortedKeys) {
      result.addAll(List<int>.filled(delayMicrosecondsToAmountMap[key]!, key));
    }
    return result;
  }

  void _poll() async {
    final delayMicrosecondsSteps = _createDelayMicrosecondsStepList({
      200: 50,
      500: 50,
      1000: 50,
      2000: 50,
      3000: 40,
      4000: 30,
      5000: 20,
      10000: 10,
      20000: 5,
      50000: 2,
      70000: 1,
      100000: 1,
    });

    var delayStepIndex = 0;

    var exitCodeCheckNeeded = true;

    final rawDataBuffer = List<int>.empty(growable: true);

    while (true) {
      if (exitCodeCheckNeeded) {
        final exit = _core.exitCodeNonBlocking();
        if (exit != null) {
          _exitCode.complete(exit);
          await _out.close();
          return;
        }
        exitCodeCheckNeeded = false;
        Timer(Duration(milliseconds: 500), () {
          exitCodeCheckNeeded = true;
        });
      }

      var receivedSomething = false;

      var data = _core.read();
      while (data != null) {
        receivedSomething = true;
        rawDataBuffer.addAll(data);
        data = _core.read();
      }
      if (!receivedSomething) {
        // when we did not receive anything then we increase the delay time
        if (delayStepIndex < delayMicrosecondsSteps.length - 1) {
          delayStepIndex++;
        }
      } else {
        //when we received something we jump to the lowest delay time
        delayStepIndex = 0;
      }

      if (_initialized) {
        if (rawDataBuffer.isNotEmpty) {
          try {
            final strContent = utf8.decode(rawDataBuffer);
            rawDataBuffer.clear();
            _out.add(strContent);
          } on FormatException catch (_) {
            // FormatException is thrown when the data contains incomplete
            // UTF-8 byte sequences.
            // int this case we do nothing and wait for the next chunk of data
            // to arrive
          }
        }
      }
      await Future.delayed(
          Duration(microseconds: delayMicrosecondsSteps[delayStepIndex]));
    }
  }

  @override
  Future<int> get exitCode {
    return _exitCode.future;
  }

  @override
  Stream<String> get out {
    return _out.stream;
  }

  @override
  void ackProcessed() {
    // NOOP
  }
}

/// An isolate based PseudoTerminal implementation. Performs better than
/// PollingPseudoTerminal and requires less resource. However this prevents
/// flutter hot reload from working. Ideal for release builds. The underlying
/// PtyCore must be blocking.
class BlockingPseudoTerminal extends BasePseudoTerminal {
  BlockingPseudoTerminal(PtyCore _core, this._syncProcessed) : super(_core);

  late SendPort _sendPort;
  final bool _syncProcessed;
  late final StreamController<String> _outStreamController;

  @override
  void init() {
    _outStreamController = StreamController<String>();
    out = _outStreamController.stream;

    final receivePort = ReceivePort();
    var first = true;
    receivePort.listen((msg) {
      if (first) {
        _sendPort = msg;
      } else {
        _outStreamController.sink.add(msg);
      }
      first = false;
    });
    Isolate.spawn(_readUntilExit,
        _IsolateArgs(receivePort.sendPort, _core, _syncProcessed));
  }

  @override
  Future<int> get exitCode async {
    final receivePort = ReceivePort();
    // ignore: unawaited_futures
    Isolate.spawn(_waitForExitCode,
        _IsolateArgs(receivePort.sendPort, _core, _syncProcessed));
    return (await receivePort.first) as int;
  }

  @override
  late Stream<String> out;

  @override
  void ackProcessed() {
    if (_syncProcessed) {
      _sendPort.send(true);
    }
  }
}

/// Argument to a isolate entry point, with a sendPort and a custom value.
/// Reduces the effort to establish bi-directional communication between isolate
/// and main thread in many cases.
class _IsolateArgs<T> {
  _IsolateArgs(this.sendPort, this.arg, this.syncProcessed);

  final SendPort sendPort;
  final T arg;
  final bool syncProcessed;
}

void _waitForExitCode(_IsolateArgs<PtyCore> ctx) async {
  final exitCode = ctx.arg.exitCodeBlocking();
  ctx.sendPort.send(exitCode);
}

void _readUntilExit(_IsolateArgs<PtyCore> ctx) async {
  final rp = ReceivePort();
  ctx.sendPort.send(rp.sendPort);

  // set [sync] to true because PtyCore.read() is blocking and prevents the
  // event loop from working.
  final input = StreamController<List<int>>(sync: true);

  input.stream.transform(utf8.decoder).listen(ctx.sendPort.send);

  final loopController = StreamController<bool>();

  if (ctx.syncProcessed) {
    rp.listen((message) {
      loopController.sink.add(message);
    });
  }
  loopController.sink.add(true); //enable the first iteration

  await for (final _ in loopController.stream) {
    final data = ctx.arg.read();

    if (data == null) {
      await input.close();
      break;
    }

    input.sink.add(data);

    // when we don't sync with the data processing then just schedule the next loop
    // iteration
    // Otherwise the loop will continue when the processing of the data is
    // finished (signaled via [PseudoTerminal.ackProcessed])
    if (!ctx.syncProcessed) {
      loopController.sink.add(true);
    }
  }
  await loopController.close();
}
