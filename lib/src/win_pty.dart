// TODOimport 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:pty/src/pty.dart';
import 'package:pty/src/util/globals.dart';
import 'package:pty/src/win_proc.dart';
import 'package:win32/win32.dart' as win32;

class WinPty implements Pty {
  WinPty() {
    final size = win32.COORD.allocate();
    size.X = 80;
    size.Y = 25;

    final inputReadSide = allocate<IntPtr>();
    final outputWriteSide = allocate<IntPtr>();
    final outputReadSide = allocate<IntPtr>();
    final inputWriteSide = allocate<IntPtr>();

    final pipe1 = win32.CreatePipe(inputReadSide, inputWriteSide, nullptr, 0);
    final pipe2 = win32.CreatePipe(outputReadSide, outputWriteSide, nullptr, 0);

    print('pipe1 $pipe1');
    print('pipe2 $pipe2');

    print('inputReadSide   ${inputReadSide.value}.');
    print('outputWriteSide ${outputWriteSide.value}.');
    print('outputReadSide  ${outputReadSide.value}.');
    print('inputWriteSide  ${inputWriteSide.value}.');

    _input = inputWriteSide.value;
    _output = outputReadSide.value;

    _hPC = allocate<IntPtr>();

    final hr = win32.CreatePseudoConsole(size.addressOf.cast<IntPtr>().value,
        inputReadSide.value, outputWriteSide.value, 0, _hPC);

    print('hr $hr');
    print('hPC ${_hPC.value}');

    if (win32.FAILED(hr)) {
      print('CreatePseudoConsole failed.');
      return;
    }
  }

  int _input;
  int _output;
  Pointer<IntPtr> _hPC;

  @override
  void resize(int width, int height) {
    final size = win32.COORD.allocate();
    size.X = 80;
    size.Y = 25;
    final hr = win32.ResizePseudoConsole(
        Pointer.fromAddress(_hPC.value), size.addressOf.cast<IntPtr>().value);
    print('ResizePseudoConsole $hr');
    if (win32.FAILED(hr)) {
      print('ResizePseudoConsole failed.');
      return;
    }
    free(size.addressOf);
  }

  @override
  String readSync() {
    return rawRead(_output);
  }

  @override
  Future<String> read() {
    return executor.submitCallable(rawRead, _output);
  }

  @override
  void write(String data) {
    final cstr = Utf16.toUtf16(data);
    final written = allocate<Uint32>();
    // final nativeString = cstr.asTypedList(units.length + 1);
    // nativeString.setAll(0, units);
    // nativeString[units.length] = 0;
    // unistd.write(_ptm, cstr.cast(), units.length);
    final ret =
        win32.WriteFile(_input, cstr, data.codeUnits.length, written, nullptr);
    print('WriteFile $ret');
    print('written ${written.value}');
  }

  @override
  WinProc exec(
    String executable, {
    String workingDirectory = '.',
    List<String> arguments,
    List<String> environment,
  }) {
    final si = win32.STARTUPINFOEX.allocate();
    // ZeroMemory(&si, sizeof(si));
    // sizeOf()
    si.cb = sizeOf<win32.STARTUPINFOEX>();

    final bytesRequired = allocate<IntPtr>();
    win32.InitializeProcThreadAttributeList(nullptr, 1, 0, bytesRequired);

    print('bytesRequired ${bytesRequired.value}');

    si.lpAttributeList = allocate<Int8>(count: bytesRequired.value);
    // win32.HeapAlloc(win32.GetProcessHeap(), 0, bytesRequired.value);

    if (si.lpAttributeList == nullptr) {
      print('E_OUTOFMEMORY failed.');
      return null;
    }

    var ret = win32.InitializeProcThreadAttributeList(
        si.lpAttributeList, 1, 0, bytesRequired);

    if (ret == 0) {
      win32.HeapFree(win32.GetProcessHeap(), 0, si.lpAttributeList);
      final err = win32.HRESULT_FROM_WIN32(win32.GetLastError());
      print('GetLastError $err.');
      return null;
    }

    ret = win32.UpdateProcThreadAttribute(
        si.lpAttributeList,
        0,
        win32.PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE,
        Pointer.fromAddress(_hPC.value),
        sizeOf<IntPtr>(),
        nullptr,
        nullptr);

    print('UpdateProcThreadAttribute $ret.');

    // final childApplication = 'C:\\windows\\system32\\cmd.exe';

    final pi = win32.PROCESS_INFORMATION.allocate();

    ret = win32.CreateProcess(
        nullptr,
        Utf16.toUtf16(executable),
        nullptr,
        nullptr,
        win32.FALSE,
        win32.EXTENDED_STARTUPINFO_PRESENT,
        nullptr,
        nullptr,
        si.addressOf,
        pi.addressOf);

    print('CreateProcess $ret.');

    if (ret == 0) {
      print('CreateProcess failed.');
      return null;
    }

    print('hProcess ${pi.hProcess}.');

    return WinProc(pi.hProcess, _hPC.value);
  }
}

String rawRead(int hFile) {
  print('rawRead');
  const bufsize = 4096;
  final buffer = allocate<Int8>(count: bufsize + 1);
  final readlen = allocate<Uint32>();

  win32.ReadFile(hFile, buffer, bufsize, readlen, nullptr);

  print('ReadFile done');
  print('readlen ${readlen.value}');

  if (readlen.value == -1) {
    return null;
  } else {
    buffer.elementAt(readlen.value).value = 0;
    final result = Utf8.fromUtf8(buffer.cast());

    free(readlen);
    free(buffer);

    return result;
  }
}
