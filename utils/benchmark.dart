import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

void main() async {
  BenchmarkMalloc().run();
}

abstract class Benchmark {
  String explain();

  void benchmark();

  void run() {
    print('benchmark: ${explain()}');
    print('preheating...');
    benchmark();
    final sw = Stopwatch()..start();
    print('running...');
    benchmark();
    sw.stop();
    print('result: ${sw.elapsedMilliseconds} ms');
  }
}

class BenchmarkMalloc extends Benchmark {
  static const cycle = 1;

  static const cellSize = 14;
  static const cellPerLine = 120;
  static const lineSize = cellSize * cellPerLine;

  static const linePerBuffer = 10000;

  static final randomData = Uint8List.fromList(List.filled(lineSize, 123));

  @override
  String explain() {
    return 'allocate buffer for $cycle times';
  }

  @override
  void benchmark() {
    for (var i = 0; i < cycle; i++) {
      for (var i = 0; i < linePerBuffer; i++) {
        final b = malloc.allocate(lineSize).cast<Uint8>().asTypedList(lineSize);
        b.setAll(0, randomData);
      }
    }
  }
}
