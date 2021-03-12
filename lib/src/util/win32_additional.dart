// import 'dart:ffi';

// import 'package:ffi/ffi.dart';
// import 'package:win32/win32.dart' as win32;

// Win32Additional? _win32a;
// Win32Additional get win32a {
//   _win32a ??= Win32Additional();
//   return _win32a!;
// }

// typedef _createNamedPipeC = IntPtr Function(
//   Pointer<Utf16> lpName,
//   Uint32 dwOpenMode,
//   Uint32 dwPipeMode,
//   Uint32 nMaxInstances,
//   Uint32 nOutBufferSize,
//   Uint32 nInBufferSize,
//   Uint32 nDefaultTimeOut,
//   Pointer<win32.SECURITY_ATTRIBUTES> lpSecurityAttributes,
// );

// typedef _createNamedPipeDart = int Function(
//   Pointer<Utf16> lpName,
//   int dwOpenMode,
//   int dwPipeMode,
//   int nMaxInstances,
//   int nOutBufferSize,
//   int nInBufferSize,
//   int nDefaultTimeOut,
//   Pointer<win32.SECURITY_ATTRIBUTES> lpSecurityAttributes,
// );

// typedef _terminateProcessC = Int32 Function(
//   IntPtr hProcess,
//   Pointer<Uint32> uExitCode,
// );
// typedef _terminateProcessDart = int Function(
//   int hProcess,
//   Pointer<Uint32> uExitCode,
// );

// typedef _connectNamedPipeC = Int32 Function(
//   IntPtr hNamedPipe,
//   Pointer<win32.OVERLAPPED> lpOverlapped,
// );
// typedef _connectNamedPipeDart = int Function(
//   int hNamedPipe,
//   Pointer<win32.OVERLAPPED> lpOverlapped,
// );


// typedef _getExitCodeProcessC = Int32 Function(
//   IntPtr hProcess,
//   Pointer<Uint32> lpExitCode,
// );
// typedef _getExitCodeProcessDart = int Function(
//   int hProcess,
//   Pointer<Uint32> lpExitCode,
// );

// class Win32Additional {
//   final PIPE_ACCESS_INBOUND = 0x00000001;
//   final PIPE_ACCESS_OUTBOUND = 0x00000002;
//   final PIPE_ACCESS_DUPLEX = 0x00000003;

//   final FILE_FLAG_FIRST_PIPE_INSTANCE = 0x00080000;
//   final FILE_FLAG_WRITE_THROUGH = 0x80000000;
//   final FILE_FLAG_OVERLAPPED = 0x40000000;

//   final WRITE_DAC = 0x00040000;
//   final WRITE_OWNER = 0x00080000;
//   final ACCESS_SYSTEM_SECURITY = 0x01000000;

//   final PIPE_TYPE_BYTE = 0x0000000;
//   final PIPE_TYPE_MESSAGE = 0x00000004;

//   final PIPE_READMODE_BYTE = 0x00000000;
//   final PIPE_READMODE_MESSAGE = 0x00000002;

//   final PIPE_WAIT = 0x00000000;
//   final PIPE_NOWAIT = 0x00000001;

//   final PIPE_UNLIMITED_INSTANCES = 255;

//   Win32Additional() {
//     final dylib = DynamicLibrary.open('kernel32.dll');

//     CreateNamedPipe =
//         dylib.lookupFunction<_createNamedPipeC, _createNamedPipeDart>(
//             'CreateNamedPipeW');

//     TerminateProcess =
//         dylib.lookupFunction<_terminateProcessC, _terminateProcessDart>(
//             'TerminateProcess');

//     ConnectNamedPipe =
//         dylib.lookupFunction<_connectNamedPipeC, _connectNamedPipeDart>(
//             'ConnectNamedPipe');

//     GetExitCodeProcess =
//         dylib.lookupFunction<_getExitCodeProcessC, _getExitCodeProcessDart>(
//             'GetExitCodeProcess');
//   }

//   late final _createNamedPipeDart CreateNamedPipe;
//   late final _terminateProcessDart TerminateProcess;
//   late final _connectNamedPipeDart ConnectNamedPipe;
//   late final _getExitCodeProcessDart GetExitCodeProcess;
// }
