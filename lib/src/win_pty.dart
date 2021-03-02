// // TODOimport 'dart:convert';
// import 'dart:ffi';

// import 'package:ffi/ffi.dart';
// import 'package:pty/src/pty.dart';
// import 'package:pty/src/util/globals.dart';
// import 'package:pty/src/win_proc.dart';
// import 'package:win32/win32.dart' as win32;

// class WinPty implements Pty {
//   WinPty() {
//     final size = calloc<win32.COORD>().ref;
//     size.X = 80;
//     size.Y = 25;

//     final inputReadSide = calloc<IntPtr>();
//     final outputWriteSide = calloc<IntPtr>();
//     final outputReadSide = calloc<IntPtr>();
//     final inputWriteSide = calloc<IntPtr>();

//     final pipe1 = win32.CreatePipe(inputReadSide, inputWriteSide, nullptr, 0);
//     final pipe2 = win32.CreatePipe(outputReadSide, outputWriteSide, nullptr, 0);

//     print('pipe1 $pipe1');
//     print('pipe2 $pipe2');

//     print('inputReadSide   ${inputReadSide.value}.');
//     print('outputWriteSide ${outputWriteSide.value}.');
//     print('outputReadSide  ${outputReadSide.value}.');
//     print('inputWriteSide  ${inputWriteSide.value}.');

//     _input = inputWriteSide.value;
//     _output = outputReadSide.value;

//     _hPC = calloc<IntPtr>();

//     final hr = win32.CreatePseudoConsole(
//         size, inputReadSide.value, outputWriteSide.value, 0, _hPC);

//     print('hr $hr');
//     print('hPC ${_hPC.value}');

//     if (win32.FAILED(hr)) {
//       print('CreatePseudoConsole failed.');
//       return;
//     }
//   }

//   late final int _input;
//   late final int _output;
//   late final Pointer<IntPtr> _hPC;

//   @override
//   void resize(int width, int height) {
//     final size = calloc<win32.COORD>();
//     size.ref.X = 80;
//     size.ref.Y = 25;
//     final hr = win32.ResizePseudoConsole(_hPC.value, size.ref);
//     print('ResizePseudoConsole $hr');
//     if (win32.FAILED(hr)) {
//       print('ResizePseudoConsole failed.');
//       return;
//     }
//     calloc.free(size);
//   }

//   @override
//   Future<String> read() async {
//     // return executor.submitCallable(rawRead, _output);
//     throw 'tbd';
//   }

//   @override
//   void write(String data) {
//     final cstr = data.toNativeUtf16();
//     final written = calloc<Uint32>();
//     // final nativeString = cstr.asTypedList(units.length + 1);
//     // nativeString.setAll(0, units);
//     // nativeString[units.length] = 0;
//     // unistd.write(_ptm, cstr.cast(), units.length);
//     final ret =
//         win32.WriteFile(_input, cstr, data.codeUnits.length, written, nullptr);
//     print('WriteFile $ret');
//     print('written ${written.value}');
//   }

//   @override
//   WinProc? exec(
//     String executable, {
//     String workingDirectory = '.',
//     List<String> arguments = const [],
//     List<String>? environment,
//   }) {
//     final si = calloc<win32.STARTUPINFOEX>();
//     // ZeroMemory(&si, sizeof(si));
//     // sizeOf()
//     // si.ref.cb = sizeOf<win32.STARTUPINFOEX>();

//     final bytesRequired = calloc<IntPtr>();
//     win32.InitializeProcThreadAttributeList(nullptr, 1, 0, bytesRequired);

//     print('bytesRequired ${bytesRequired.value}');

//     si.ref.lpAttributeList = calloc<Int8>(bytesRequired.value);
//     // win32.HeapAlloc(win32.GetProcessHeap(), 0, bytesRequired.value);

//     if (si.ref.lpAttributeList == nullptr) {
//       print('E_OUTOFMEMORY failed.');
//       return null;
//     }

//     var ret = win32.InitializeProcThreadAttributeList(
//         si.ref.lpAttributeList, 1, 0, bytesRequired);

//     if (ret == 0) {
//       win32.HeapFree(win32.GetProcessHeap(), 0, si.ref.lpAttributeList);
//       final err = win32.HRESULT_FROM_WIN32(win32.GetLastError());
//       print('GetLastError $err.');
//       return null;
//     }

//     ret = win32.UpdateProcThreadAttribute(
//         si.ref.lpAttributeList,
//         0,
//         win32.PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE,
//         Pointer.fromAddress(_hPC.value),
//         sizeOf<IntPtr>(),
//         nullptr,
//         nullptr);

//     print('UpdateProcThreadAttribute $ret.');

//     // final childApplication = 'C:\\windows\\system32\\cmd.exe';

//     final pi = calloc<win32.PROCESS_INFORMATION>();

//     ret = win32.CreateProcess(
//         nullptr,
//         executable.toNativeUtf16(),
//         nullptr,
//         nullptr,
//         win32.FALSE,
//         win32.EXTENDED_STARTUPINFO_PRESENT,
//         nullptr,
//         nullptr,
//         si.cast(),
//         pi);

//     print('CreateProcess $ret.');

//     if (ret == 0) {
//       print('CreateProcess failed.');
//       return null;
//     }

//     print('hProcess ${pi.ref.hProcess}.');

//     return WinProc(pi.ref.hProcess, _hPC.value);
//   }
// }

// String? rawRead(int hFile) {
//   print('rawRead');
//   const bufsize = 4096;
//   final buffer = calloc<Int8>(bufsize + 1);
//   final readlen = calloc<Uint32>();

//   win32.ReadFile(hFile, buffer, bufsize, readlen, nullptr);

//   print('ReadFile done');
//   print('readlen ${readlen.value}');

//   if (readlen.value == -1) {
//     return null;
//   } else {
//     buffer.elementAt(readlen.value).value = 0;
//     final result = buffer.cast<Utf8>().toDartString();

//     calloc.free(readlen);
//     calloc.free(buffer);

//     return result;
//   }
// }
