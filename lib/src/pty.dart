import 'dart:io';

import 'package:pty/src/proc.dart';

import './unix_pty.dart';

abstract class Pty {
  factory Pty() {
    if (Platform.isWindows) {
      // return PtyWindows();
      return null;
    } else {
      return PtyUnix();
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
