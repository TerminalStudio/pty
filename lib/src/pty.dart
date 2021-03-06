import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:pty/src/impl/unix.dart';
import 'package:pty/src/impl/windows.dart';
import 'package:pty/src/pty_core.dart';

class PseudoTerminal {
  static PseudoTerminal start(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
    // bool includeParentEnvironment = true,
    // bool runInShell = false,
    // ProcessStartMode mode = ProcessStartMode.normal,
  }) {
    if (Platform.isWindows) {
      final core = PtyCoreWindows.start(
        executable,
        arguments,
        workingDirectory: workingDirectory,
        environment: environment,
      );

      return PseudoTerminal._(core);
    }

    final core = PtyCoreUnix.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      environment: environment,
    );

    return PseudoTerminal._(core);
  }

  PseudoTerminal._(this._core) {
    Timer.periodic(Duration(milliseconds: 15), _poll);
  }

  late final PtyCore _core;

  final _exitCode = Completer<int>();
  final _in = StreamController<String>();
  final _out = StreamController<String>();

  void _poll(Timer timer) {
    final exit = _core.exitCodeNonBlocking();
    if (exit != null) {
      _exitCode.complete(exit);
      _in.close();
      _out.close();
      timer.cancel();
      return;
    }

    var data = _core.readNonBlocking();
    while (data != null) {
      _out.add(data);
      data = _core.readNonBlocking();
    }
  }

  bool kill([ProcessSignal signal = ProcessSignal.sigterm]) {
    return _core.kill(signal);
  }

  Future<int> get exitCode {
    return _exitCode.future;
  }

  // int get pid {
  //   return _core.pid;
  // }

  void write(String input) {
    final data = utf8.encode(input);
    _core.write(data);
  }

  Stream<String> get out {
    return _out.stream;
  }

  void resize(int width, int height) {
    _core.resize(width, height);
  }
}
