import 'dart:io';

import 'dart:typed_data';

abstract class PtyCore {
  Uint8List? read();

  int? exitCodeNonBlocking();

  int exitCodeBlocking();

  bool kill([ProcessSignal signal = ProcessSignal.sigterm]);

  void resize(int width, int height);

  // int get pid;

  void write(List<int> data);
}
