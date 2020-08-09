import 'dart:ffi';

import 'package:executorservices/executorservices.dart';
import 'package:pty/src/unistd.dart';

final executor = ExecutorService.newUnboundExecutor();

Unistd _unistd;
Unistd get unistd {
  return _unistd ?? Unistd(DynamicLibrary.process());
}
