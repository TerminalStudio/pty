import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:pty/src/pty_core.dart';
import 'package:pty/src/pty_error.dart';
// import 'package:pty/src/util/win32_additional.dart';
import 'package:win32/win32.dart' as win32;

class _NamedPipe {
  _NamedPipe({bool nowait = false}) {
    final pipeName = r'\\.\pipe\dart-pty-pipe';
    final pPipeName = pipeName.toNativeUtf16();

    final waitMode = nowait ? win32.PIPE_NOWAIT : win32.PIPE_WAIT;

    final namedPipe = win32.CreateNamedPipe(
      pPipeName,
      win32.PIPE_ACCESS_DUPLEX,
      waitMode | win32.PIPE_READMODE_MESSAGE | win32.PIPE_TYPE_MESSAGE,
      win32.PIPE_UNLIMITED_INSTANCES,
      4096,
      4096,
      0,
      nullptr,
    );

    if (namedPipe == win32.INVALID_HANDLE_VALUE) {
      throw PtyException('CreateNamedPipe failed: ${win32.GetLastError()}');
    }

    final namedPipeClient = win32.CreateFile(
      pPipeName,
      win32.GENERIC_READ | win32.GENERIC_WRITE,
      0, // no sharing
      nullptr, // default security attributes
      win32.OPEN_EXISTING, // opens existing pipe ,
      0, // default attributes
      0, // no template file
    );
    calloc.free(pPipeName);

    if (namedPipeClient == win32.INVALID_HANDLE_VALUE) {
      throw PtyException('CreateFile on named pipe failed');
    }

    readSide = namedPipe;
    writeSide = namedPipeClient;
  }

  late final int readSide;
  late final int writeSide;
}

class PtyCoreWindows implements PtyCore {
  factory PtyCoreWindows.start(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
  }) {
    // create input pipe
    final hReadPipe = calloc<IntPtr>();
    final hWritePipe = calloc<IntPtr>();
    final pipe2 = win32.CreatePipe(hReadPipe, hWritePipe, nullptr, 512);
    if (pipe2 == win32.INVALID_HANDLE_VALUE) {
      throw PtyException('CreatePipe failed: ${win32.GetLastError()}');
    }
    final inputWriteSide = hWritePipe.value;
    final inputReadSide = hReadPipe.value;

    // create output pipe
    final pipe1 = _NamedPipe(nowait: true);
    final outputReadSide = pipe1.readSide;
    final outputWriteSide = pipe1.writeSide;

    // final pipe2 = _NamedPipe(nowait: false);
    // final inputWriteSide = pipe2.writeSide;
    // final inputReadSide = pipe2.readSide;

    // create pty
    final _hPty = calloc<IntPtr>();
    final size = calloc<win32.COORD>().ref;
    size.X = 80;
    size.Y = 25;
    final hr = win32.CreatePseudoConsole(
      size,
      inputReadSide,
      outputWriteSide,
      0,
      _hPty,
    );

    if (win32.FAILED(hr)) {
      throw PtyException('CreatePseudoConsole failed.');
    }

    // setup startup info
    final si = calloc<win32.STARTUPINFOEX>();
    si.ref.StartupInfo.cb = sizeOf<win32.STARTUPINFOEX>();

    final bytesRequired = calloc<IntPtr>();
    win32.InitializeProcThreadAttributeList(
        nullptr.address, 1, 0, bytesRequired);
    si.ref.lpAttributeList = calloc<Int8>(bytesRequired.value);

    var ret = win32.InitializeProcThreadAttributeList(
        si.ref.lpAttributeList.address, 1, 0, bytesRequired);

    if (ret == win32.FALSE) {
      throw PtyException('InitializeProcThreadAttributeList failed.');
    }

    // use pty
    ret = win32.UpdateProcThreadAttribute(
      si.ref.lpAttributeList.address,
      0,
      win32.PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE,
      Pointer.fromAddress(_hPty.value),
      sizeOf<IntPtr>(),
      nullptr,
      nullptr,
    );

    if (ret == win32.FALSE) {
      throw PtyException('UpdateProcThreadAttribute failed.');
    }

    // build command line
    final commandBuffer = StringBuffer();
    commandBuffer.write(executable);
    if (arguments.isNotEmpty) {
      for (var argument in arguments) {
        commandBuffer.write(' ');
        commandBuffer.write(argument);
      }
    }
    final pCommandLine = commandBuffer.toString().toNativeUtf16();

    // build current directory
    Pointer<Utf16> pCurrentDirectory = nullptr;
    if (workingDirectory != null) {
      pCurrentDirectory = workingDirectory.toNativeUtf16();
    }

    // build environment
    Pointer<Utf16> pEnvironment = nullptr;
    if (environment != null && environment.isNotEmpty) {
      final buffer = StringBuffer();

      for (var env in environment.entries) {
        buffer.write(env.key);
        buffer.write('=');
        buffer.write(env.value);
        buffer.write('\u0000');
      }

      pEnvironment = buffer.toString().toNativeUtf16();
    }

    // start the process.
    final pi = calloc<win32.PROCESS_INFORMATION>();
    ret = win32.CreateProcess(
      nullptr,
      pCommandLine,
      nullptr,
      nullptr,
      win32.FALSE,
      win32.EXTENDED_STARTUPINFO_PRESENT | win32.CREATE_UNICODE_ENVIRONMENT,
      // pass pEnvironment here causes crash
      // TODO: fix this
      // pEnvironment,
      nullptr,
      pCurrentDirectory,
      si.cast(),
      pi,
    );

    calloc.free(pCommandLine);

    if (pCurrentDirectory != nullptr) {
      calloc.free(pCurrentDirectory);
    }

    if (pEnvironment != nullptr) {
      calloc.free(pEnvironment);
    }

    if (ret == 0) {
      throw PtyException('CreateProcess failed: ${win32.GetLastError()}');
    }

    return PtyCoreWindows._(
      inputWriteSide,
      outputReadSide,
      _hPty.value,
      pi.ref.hProcess,
    );
  }

  PtyCoreWindows._(
    this._inputWriteSide,
    this._outputReadSide,
    this._hPty,
    this._hProcess,
  );

  final int _inputWriteSide;
  final int _outputReadSide;
  final int _hPty;
  final int _hProcess;

  static const _bufferSize = 4096;
  final _buffer = calloc<Int8>(_bufferSize + 1);

  @override
  List<int>? readNonBlocking() {
    final pReadlen = calloc<Uint32>();
    final ret = win32.ReadFile(
        _outputReadSide, _buffer, _bufferSize, pReadlen, nullptr);

    final readlen = pReadlen.value;
    calloc.free(pReadlen);

    if (ret == 0) {
      return null;
    }

    if (readlen <= 0) {
      return null;
    } else {
      return _buffer.cast<Uint8>().asTypedList(readlen);
    }
  }

  @override
  int? exitCodeNonBlocking() {
    final exitCodePtr = calloc<Uint32>();
    final ret = win32.GetExitCodeProcess(_hProcess, exitCodePtr);

    final exitCode = exitCodePtr.value;
    calloc.free(exitCodePtr);

    const STILL_ACTIVE = 259;
    if (ret == 0 || exitCode == STILL_ACTIVE) {
      return null;
    }

    return exitCode;
  }

  @override
  bool kill([ProcessSignal signal = ProcessSignal.sigterm]) {
    final ret = win32.TerminateProcess(_hProcess, nullptr.address);
    win32.ClosePseudoConsole(_hPty);
    return ret != 0;
  }

  @override
  void resize(int width, int height) {
    final size = calloc<win32.COORD>();
    size.ref.X = width;
    size.ref.Y = height;
    final hr = win32.ResizePseudoConsole(_hPty, size.ref);
    if (win32.FAILED(hr)) {
      throw PtyException('ResizePseudoConsole failed.');
    }
    calloc.free(size);
  }

  // @override
  // int get pid {
  //   return _hProcess;
  // }

  @override
  void write(List<int> data) {
    final buffer = calloc<Int8>(data.length);
    buffer.asTypedList(data.length).setAll(0, data);
    final written = calloc<Uint32>();
    win32.WriteFile(_inputWriteSide, buffer, data.length, written, nullptr);
    calloc.free(buffer);
    calloc.free(written);
  }
}

// void rawWait(int hProcess) {
//   // final status = allocate<Int32>();
//   // unistd.waitpid(pid, status, 0);
//   final count = 1;
//   final pids = calloc<IntPtr>(count);
//   final infinite = 0xFFFFFFFF;
//   pids.elementAt(0).value = hProcess;
//   win32.MsgWaitForMultipleObjects(count, pids, 1, infinite, win32.QS_ALLEVENTS);
// }
