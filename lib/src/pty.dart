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
  PollingPseudoTerminal(PtyCore _core) : super(_core) {
    Timer.periodic(Duration(milliseconds: 15), _poll);
  }

  final _exitCode = Completer<int>();
  final _out = StreamController<String>();

  void _poll(Timer timer) {
    final exit = _core.exitCodeNonBlocking();
    if (exit != null) {
      _exitCode.complete(exit);
      _out.close();
      timer.cancel();
      return;
    }

    final buffer = StringBuffer();

    var data = _core.read();
    while (data != null) {
      // TODO: handle Unhandled Exception: FormatException: Unfinished UTF-8
      // octet sequence (at offset 1024)
      buffer.write(utf8.decode(data));
      data = _core.read();
    }

    if (buffer.isNotEmpty) {
      _out.add(buffer.toString());
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
}

/// An isolate based PseudoTerminal implementation. Performs better than
/// PollingPseudoTerminal and requires less resource. However this prevents
/// flutter hot reload from working. Ideal for release builds. The underlying
/// PtyCore must be blocking.
class BlockingPseudoTerminal extends BasePseudoTerminal {
  BlockingPseudoTerminal(PtyCore _core) : super(_core) {
    final receivePort = ReceivePort();
    Isolate.spawn(_readUntilExit, _IsolateArgs(receivePort.sendPort, _core));
    out = receivePort.cast();
  }

  @override
  Future<int> get exitCode async {
    final receivePort = ReceivePort();
    // ignore: unawaited_futures
    Isolate.spawn(_waitForExitCode, _IsolateArgs(receivePort.sendPort, _core));
    return (await receivePort.first) as int;
  }

  @override
  late Stream<String> out;
}

/// Argument to a isolate entry point, with a sendPort and a custom value.
/// Reduces the effort to establish bi-directional communication between isolate
/// and main thread in many cases.
class _IsolateArgs<T> {
  _IsolateArgs(this.sendPort, this.arg);

  final SendPort sendPort;
  final T arg;
}

void _waitForExitCode(_IsolateArgs<PtyCore> ctx) async {
  final exitCode = ctx.arg.exitCodeBlocking();
  ctx.sendPort.send(exitCode);
}

void _readUntilExit(_IsolateArgs<PtyCore> ctx) async {
  // set [sync] to true because PtyCore.read() is blocking and prevents the
  // event loop from working.
  final input = StreamController<List<int>>(sync: true);

  input.stream.transform(utf8.decoder).listen(ctx.sendPort.send);

  while (true) {
    final data = ctx.arg.read();

    if (data == null) {
      await input.close();
      break;
    }

    input.sink.add(data);
  }
}
