import 'dart:io';

import 'package:pty/src/proc.dart';
import 'package:pty/src/win_pty.dart';

import './unix_pty.dart';

abstract class Pty {
  factory Pty() {
    if (Platform.isWindows) {
      return WinPty();
    } else {
      return UnixPty();
    }
  }

  String readSync();

  Future<String> read();

  void write(String data);

  void resize(int width, int height);

  Proc exec(
    String executable, {
    String workingDirectory = '.',
    List<String> arguments,
    List<String> environment,
  });

  // void close();
}
