// import 'dart:ffi';

// import 'package:ffi/ffi.dart';
// import 'package:pty/src/proc.dart';
// import 'package:win32/win32.dart' as win32;

// class WinProc implements Proc {
//   WinProc(this.hProcess, this.hPC);

//   final int hProcess;
//   final int hPC;

//   @override
//   Future<void> wait() async {
//     // return executor.submitCallable(rawWait, hProcess);
//     throw 'tbd';
//   }

//   @override
//   void kill() {
//     // unistd.kill(hProcess, SIGKILL);
//     // win32.CreateProcess
//     win32.ClosePseudoConsole(hPC);
//   }
// }

// void rawWait(int hProcess) {
//   // final status = allocate<Int32>();
//   // unistd.waitpid(pid, status, 0);
//   final count = 1;
//   final pids = calloc<IntPtr>(count);
//   final infinite = 0xFFFFFFFF;
//   pids.elementAt(0).value = hProcess;
//   win32.MsgWaitForMultipleObjects(count, pids, 1, infinite, win32.QS_ALLEVENTS);
// }
