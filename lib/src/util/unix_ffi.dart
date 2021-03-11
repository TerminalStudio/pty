import 'dart:ffi';

import 'package:ffi/ffi.dart';

Unix? _unix;
Unix get unix {
  _unix ??= Unix(DynamicLibrary.process());
  return _unix!;
}

typedef _c_open = Int32 Function(Pointer<Utf8> __file, Int32 __oflag);
typedef _dart_open = int Function(Pointer<Utf8> __file, int __oflag);

typedef _c_grantpt = Int64 Function(Int64 __fd);
typedef _dart_grantpt = int Function(int __fd);

typedef _c_unlockpt = Int64 Function(Int64 __fd);
typedef _dart_unlockpt = int Function(int __fd);

typedef _c_tcgetattr = Int32 Function(Int32 __fd, Pointer<termios> __termios_p);
typedef _dart_tcgetattr = int Function(int __fd, Pointer<termios> __termios_p);

typedef _c_tcsetattr = Int32 Function(
  Int32 __fd,
  Int32 __optional_actions,
  Pointer<termios> __termios_p,
);
typedef _dart_tcsetattr = int Function(
  int __fd,
  int __optional_actions,
  Pointer<termios> __termios_p,
);

typedef _c_fork = Int32 Function();
typedef _dart_fork = int Function();

typedef _c_setsid = Int32 Function();
typedef _dart_setsid = int Function();

typedef _c_ptsname = Pointer<Utf8> Function(Int64 __sysno);
typedef _dart_ptsname = Pointer<Utf8> Function(int __sysno);

typedef _c_dup2 = Int32 Function(Int32 __fd, Int32 __fd2);
typedef _dart_dup2 = int Function(int __fd, int __fd2);

typedef _c_execvp = Int32 Function(
  Pointer<Utf8> __file,
  Pointer<Pointer<Utf8>> __argv,
);
typedef _dart_execvp = int Function(
  Pointer<Utf8> __file,
  Pointer<Pointer<Utf8>> __argv,
);

typedef _c_forkpty = Int32 Function(
  Pointer<Int32> masterRef,
  Pointer<Utf8> name,
  Pointer<termios> termp,
  Pointer<winsize> winp,
);
typedef _dart_forkpty = int Function(
  Pointer<Int32> masterRef,
  Pointer<Utf8> name,
  Pointer<termios> termp,
  Pointer<winsize> winp,
);

typedef _c_execve = Int32 Function(
  Pointer<Utf8> __file,
  Pointer<Pointer<Utf8>> __argv,
  Pointer<Pointer<Utf8>> __envp,
);
typedef _dart_execve = int Function(
  Pointer<Utf8> __file,
  Pointer<Pointer<Utf8>> __argv,
  Pointer<Pointer<Utf8>> __envp,
);


typedef _c_read = Int64 Function(Int32 _fd, Pointer<Void> _buf, Int32 _nbytes);
typedef _dart_read = int Function(int _fd, Pointer<Void> _buf, int _nbytes);

typedef _c_waitpid = Int32 Function(
  Int32 __pid,
  Pointer<Int32> __stat_loc,
  Int32 __options,
);
typedef _dart_waitpid = int Function(
  int __pid,
  Pointer<Int32> __stat_loc,
  int __options,
);

typedef _c_kill = Int32 Function(Int32 pid, Int32 sig);
typedef _dart_kill = int Function(int pid, int sig);

typedef _c_write = Int64 Function(Int32 fd, Pointer<Void> buf, Int32 n);
typedef _dart_write = int Function(int fd, Pointer<Void> buf, int n);

typedef _c_ioctl = Int32 Function(Int32 fd, Uint64 request, Pointer<Void> sz);
typedef _dart_ioctl = int Function(int fd, int request, Pointer<Void> sz);

typedef _c_fcntl = Int32 Function(Int32 fd, Int32 cmd);
typedef _dart_fcntl = int Function(int fd, int cmd);

typedef _c_fcntl3 = Int32 Function(Int32 fd, Int32 cmd, Int32 flags);
typedef _dart_fcntl3 = int Function(int fd, int cmd, int flags);

typedef _c_perror = Void Function(Pointer<Utf8> s);
typedef _dart_perror = void Function(Pointer<Utf8> s);

typedef _c_close = Int32 Function(Int32 fd);
typedef _dart_close = int Function(int fd);

typedef _c_putenv = Int32 Function(Pointer<Int8> string);
typedef _dart_putenv = int Function(Pointer<Int8> string);

typedef _c_setenv = Int32 Function(
  Pointer<Utf8> name,
  Pointer<Utf8> value,
  Int32 replace,
);
typedef _dart_setenv = int Function(
  Pointer<Utf8> name,
  Pointer<Utf8> value,
  int replace,
);

typedef _c_chdir = Int32 Function(Pointer<Utf8> __path);
typedef _dart_chdir = int Function(Pointer<Utf8> __path);

class Unix {
  Unix(DynamicLibrary lib) {
    errno = lib.lookup<Int32>('errno');

    open = lib.lookupFunction<_c_open, _dart_open>('open');
    grantpt = lib.lookupFunction<_c_grantpt, _dart_grantpt>('grantpt');
    unlockpt = lib.lookupFunction<_c_unlockpt, _dart_unlockpt>('unlockpt');
    tcgetattr = lib.lookupFunction<_c_tcgetattr, _dart_tcgetattr>('tcgetattr');
    tcsetattr = lib.lookupFunction<_c_tcsetattr, _dart_tcsetattr>('tcsetattr');
    fork = lib.lookupFunction<_c_fork, _dart_fork>('fork');
    setsid = lib.lookupFunction<_c_setsid, _dart_setsid>('setsid');
    ptsname = lib.lookupFunction<_c_ptsname, _dart_ptsname>('ptsname');
    dup2 = lib.lookupFunction<_c_dup2, _dart_dup2>('dup2');
    execvp = lib.lookupFunction<_c_execvp, _dart_execvp>('execvp');
    execve = lib.lookupFunction<_c_execve, _dart_execve>('execve');
    forkpty = lib.lookupFunction<_c_forkpty, _dart_forkpty>('forkpty');
    read = lib.lookupFunction<_c_read, _dart_read>('read');
    waitpid = lib.lookupFunction<_c_waitpid, _dart_waitpid>('waitpid');
    kill = lib.lookupFunction<_c_kill, _dart_kill>('kill');
    write = lib.lookupFunction<_c_write, _dart_write>('write');
    ioctl = lib.lookupFunction<_c_ioctl, _dart_ioctl>('ioctl');
    fcntl = lib.lookupFunction<_c_fcntl, _dart_fcntl>('fcntl');
    fcntl3 = lib.lookupFunction<_c_fcntl3, _dart_fcntl3>('fcntl');
    perror = lib.lookupFunction<_c_perror, _dart_perror>('perror');
    close = lib.lookupFunction<_c_close, _dart_close>('close');
    putenv = lib.lookupFunction<_c_putenv, _dart_putenv>('putenv');
    setenv = lib.lookupFunction<_c_setenv, _dart_setenv>('setenv');
    chdir = lib.lookupFunction<_c_chdir, _dart_chdir>('chdir');
  }

  late final Pointer<Int32> errno;

  late final _dart_open open;
  late final _dart_grantpt grantpt;
  late final _dart_unlockpt unlockpt;
  late final _dart_tcgetattr tcgetattr;
  late final _dart_tcsetattr tcsetattr;
  late final _dart_fork fork;
  late final _dart_setsid setsid;
  late final _dart_ptsname ptsname;
  late final _dart_dup2 dup2;
  late final _dart_execvp execvp;
  late final _dart_execve execve;
  late final _dart_forkpty forkpty;
  late final _dart_read read;
  late final _dart_waitpid waitpid;
  late final _dart_kill kill;
  late final _dart_write write;
  late final _dart_ioctl ioctl;
  late final _dart_fcntl fcntl;
  late final _dart_fcntl3 fcntl3;
  late final _dart_perror perror;
  late final _dart_close close;
  late final _dart_putenv putenv;
  late final _dart_setenv setenv;
  late final _dart_chdir chdir;
}

class termios extends Struct {
  @Uint64()
  external int c_iflag; /* input mode flags */
  @Uint64()
  external int c_oflag; /* output mode flags */
  @Uint64()
  external int c_cflag; /* control mode flags */
  @Uint64()
  external int c_lflag; /* local mode flags */

  @Uint8()
  external int c_line; /* line discipline */

  @Int8()
  external int c_cc_0;
  @Int8()
  external int c_cc_1;
  @Int8()
  external int c_cc_2;
  @Int8()
  external int c_cc_3;
  @Int8()
  external int c_cc_4;
  @Int8()
  external int c_cc_5;
  @Int8()
  external int c_cc_6;
  @Int8()
  external int c_cc_7;
  @Int8()
  external int c_cc_8;
  @Int8()
  external int c_cc_9;
  @Int8()
  external int c_cc_10;
  @Int8()
  external int c_cc_11;
  @Int8()
  external int c_cc_12;
  @Int8()
  external int c_cc_13;
  @Int8()
  external int c_cc_14;
  @Int8()
  external int c_cc_15;
  @Int8()
  external int c_cc_16;
  @Int8()
  external int c_cc_17;
  @Int8()
  external int c_cc_18;
  @Int8()
  external int c_cc_19;
  @Int8()
  external int c_cc_20;
  @Int8()
  external int c_cc_21;
  @Int8()
  external int c_cc_22;
  @Int8()
  external int c_cc_23;
  @Int8()
  external int c_cc_24;
  @Int8()
  external int c_cc_25;
  @Int8()
  external int c_cc_26;
  @Int8()
  external int c_cc_27;
  @Int8()
  external int c_cc_28;
  @Int8()
  external int c_cc_29;
  @Int8()
  external int c_cc_30;
  @Int8()
  external int c_cc_31;

  @Uint64()
  external int c_ispeed; /* input speed */
  @Uint64()
  external int c_ospeed; /* output speed */
}

class winsize extends Struct {
  @Uint16()
  external int ws_row;

  @Uint16()
  external int ws_col;

  @Uint16()
  external int ws_xpixel;

  @Uint16()
  external int ws_ypixel;
}
