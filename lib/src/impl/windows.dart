import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:pty/src/pty_core.dart';
import 'package:pty/src/pty_error.dart';
import 'package:win32/win32.dart' as win32;

// void _setNonblock(int fd) {
//   var flag = unix.fcntl(fd, consts.F_GETFL);

//   flag |= consts.O_NONBLOCK;

//   print('flag $flag');

//   final ret = unix.fcntl3(fd, consts.F_SETFL, flag);
//   if (ret == -1) {
//     unix.perror(nullptr);
//     // throw PtyError('fcntl3 failed.');
//   }
// }

class PtyCoreWindows implements PtyCore {
  factory PtyCoreWindows.start(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
  }) {
    // create read/write pipe.
    final inputReadSide = calloc<IntPtr>();
    final outputWriteSide = calloc<IntPtr>();
    final outputReadSide = calloc<IntPtr>();
    final inputWriteSide = calloc<IntPtr>();
    final pipe1 = win32.CreatePipe(inputReadSide, inputWriteSide, nullptr, 0);
    final pipe2 = win32.CreatePipe(outputReadSide, outputWriteSide, nullptr, 0);

    // create pty
    final _hPC = calloc<IntPtr>();
    final size = calloc<win32.COORD>().ref;
    size.X = 80;
    size.Y = 25;
    final hr = win32.CreatePseudoConsole(
        size, inputReadSide.value, outputWriteSide.value, 0, _hPC,);

    if (win32.FAILED(hr)) {
      throw PtyError('CreatePseudoConsole failed.');
    }

    // setup startup info
    final si = calloc<win32.STARTUPINFOEX>();
    final bytesRequired = calloc<IntPtr>();
    win32.InitializeProcThreadAttributeList(nullptr, 1, 0, bytesRequired);
    si.ref.lpAttributeList = calloc<Int8>(bytesRequired.value);

    if (si.ref.lpAttributeList == nullptr) {
      throw PtyError('E_OUTOFMEMORY failed.');
    }

    win32.UpdateProcThreadAttribute(
      si.ref.lpAttributeList,
      0,
      win32.PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE,
      Pointer.fromAddress(_hPC.value),
      sizeOf<IntPtr>(),
      nullptr,
      nullptr,
    );

    // start the process.
    final pi = calloc<win32.PROCESS_INFORMATION>();
    final ret = win32.CreateProcess(
      nullptr,
      executable.toNativeUtf16(),
      nullptr,
      nullptr,
      win32.FALSE,
      win32.EXTENDED_STARTUPINFO_PRESENT,
      nullptr,
      nullptr,
      si.cast(),
      pi,
    );

    if (ret == 0) {
      throw PtyError('CreateProcess failed.');
    }

    return PtyCoreWindows._(
      inputWriteSide.value,
      outputReadSide.value,
      _hPC.value,
      pi.ref.hProcess,
    );
  }

  PtyCoreWindows._(this._input, this._output, this._hPC, this._hProcess) {
    // final devname = unix.ptsname(_ptm);
    // _pts = unix.open(devname, consts.O_RDWR);
  }

  final int _input;
  final int _output;
  final int _hPC;
  final int _hProcess;
  // late final int _pts;

  static const _bufferSize = 4096;
  final _buffer = calloc<Int8>(_bufferSize + 1);

  @override
  String? readNonBlocking() {
    win32.CreatePipe(hReadPipe, hWritePipe, lpPipeAttributes, nSize)
    // final readlen = unix.read(_ptm, _buffer.cast(), _bufferSize);

    // if (readlen == -1) {
    //   return null;
    // }

    // return _buffer.cast<Utf8>().toDartString(length: readlen);
  }

  @override
  int? exitCodeNonBlocking() {
    final statusPointer = calloc<Int32>();
    final pid = unix.waitpid(_pid, statusPointer, consts.WNOHANG);

    final status = statusPointer.value;
    calloc.free(statusPointer);

    if (pid == 0) {
      return null;
    }

    return status;
  }

  @override
  bool kill([ProcessSignal signal = ProcessSignal.sigterm]) {
    return unix.kill(pid, consts.SIGKILL) == 0;
  }

  @override
  void resize(int width, int height) {
    final sz = calloc<winsize>();
    sz.ref.ws_col = width;
    sz.ref.ws_row = height;

    final ret = unix.ioctl(_ptm, consts.TIOCSWINSZ, sz.cast<Void>());
    calloc.free(sz);

    if (ret == -1) {
      print(_ptm);
      print(unix.errno.value);
      unix.perror(nullptr);
    }
  }

  @override
  int get pid {
    return _pid;
  }

  @override
  void write(List<int> data) {
    final buf = calloc<Int8>(data.length);
    buf.asTypedList(data.length).setAll(0, data);
    unix.write(_ptm, buf.cast(), data.length);
    calloc.free(buf);
  }
}
