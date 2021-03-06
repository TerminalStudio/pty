import 'dart:io';

abstract class PtyCore {
  String? readNonBlocking();

  int? exitCodeNonBlocking();

  bool kill([ProcessSignal signal = ProcessSignal.sigterm]);

  void resize(int width, int height);

  // int get pid;

  void write(List<int> data);
}