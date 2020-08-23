import 'dart:ffi';

import 'package:pty/src/proc.dart';
import 'package:pty/src/unistd.dart';
import 'package:pty/src/util/globals.dart';

class UnixProc implements Proc {
  UnixProc(this.hProcess);

  final int hProcess;

  @override
  void waitSync() {
    rawWait(hProcess);
  }

  @override
  Future<void> wait() async {
    return executor.submitCallable(rawWait, hProcess);
  }

  @override
  void kill() {
    unistd.kill(hProcess, SIGKILL);
  }
}

void rawWait(int pid) {
  // final status = allocate<Int32>();
  // unistd.waitpid(pid, status, 0);
  unistd.waitpid(pid, nullptr, 0);
}
