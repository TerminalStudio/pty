// ignore_for_file: annotate_overrides

import 'dart:io';

final consts = Platform.isAndroid
    ? AndroidConst()
    : Platform.isLinux
        ? LinuxConst()
        : BsdConst();

class AndroidConst extends BsdConst {
  @override
  final TIOCSWINSZ = 0x5414;
  @override
  final O_NONBLOCK = 4000;
}

class LinuxConst implements BsdConst {
  final IUTF8 = 16384;

  final IXON = 1024;
  final IXOFF = 4096;

  final TCSANOW = 0;

  final WNOHANG = 1;

  final SIGINT = 2;
  final SIGILL = 4;
  final SIGABRT = 6;
  final SIGFPE = 8;
  final SIGSEGV = 11;
  final SIGTERM = 15;
  final SIGHUP = 1;
  final SIGQUIT = 3;
  final SIGTRAP = 5;
  final SIGKILL = 9;
  final SIGBUS = 7;
  final SIGSYS = 31;
  final SIGPIPE = 13;
  final SIGALRM = 14;
  final SIGURG = 23;
  final SIGSTOP = 19;
  final SIGTSTP = 20;
  final SIGCONT = 18;
  final SIGCHLD = 17;
  final SIGTTIN = 21;
  final SIGTTOU = 22;
  final SIGPOLL = 29;
  final SIGXCPU = 24;
  final SIGXFSZ = 25;
  final SIGVTALRM = 26;
  final SIGPROF = 27;
  final SIGUSR1 = 10;
  final SIGUSR2 = 12;
  final SIGWINCH = 28;
  final SIGIO = 29;
  final SIGIOT = 6;

  final F_DUPFD = 0;
  final F_GETFD = 1;
  final F_SETFD = 2;
  final F_GETFL = 3;
  final F_SETFL = 4;

  final O_ACCMODE = 3;
  final O_RDONLY = 0;
  final O_WRONLY = 1;
  final O_RDWR = 2;
  final O_CREAT = 64;
  final O_EXCL = 128;
  final O_NOCTTY = 256;
  final O_TRUNC = 512;
  final O_APPEND = 1024;
  final O_NONBLOCK = 2048;
  final O_NDELAY = 2048;
  final O_SYNC = 1052672;
  final O_FSYNC = 1052672;
  final O_ASYNC = 8192;

  final O_DIRECTORY = 65536;
  final O_NOFOLLOW = 131072;
  final O_CLOEXEC = 524288;
  final O_DSYNC = 4096;

  final TIOCSWINSZ = 21524;
}

class BsdConst {
  final IUTF8 = 16384;

  final IXON = 512;
  final IXOFF = 1024;

  final TCSANOW = 0;

  final WNOHANG = 1;

  final SIGINT = 2;
  final SIGILL = 4;
  final SIGABRT = 6;
  final SIGFPE = 8;
  final SIGSEGV = 11;
  final SIGTERM = 15;
  final SIGHUP = 1;
  final SIGQUIT = 3;
  final SIGTRAP = 5;
  final SIGKILL = 9;
  final SIGBUS = 10;
  final SIGSYS = 12;
  final SIGPIPE = 13;
  final SIGALRM = 14;
  final SIGURG = 16;
  final SIGSTOP = 17;
  final SIGTSTP = 18;
  final SIGCONT = 19;
  final SIGCHLD = 20;
  final SIGTTIN = 21;
  final SIGTTOU = 22;
  final SIGXCPU = 24;
  final SIGXFSZ = 25;
  final SIGVTALRM = 26;
  final SIGPROF = 27;
  final SIGUSR1 = 30;
  final SIGUSR2 = 31;
  final SIGWINCH = 28;
  final SIGIO = 23;
  final SIGIOT = 6;

  final F_DUPFD = 0;
  final F_GETFD = 1;
  final F_SETFD = 2;
  final F_GETFL = 3;
  final F_SETFL = 4;

  final O_ACCMODE = 3;
  final O_RDONLY = 0;
  final O_WRONLY = 1;
  final O_RDWR = 2;
  final O_CREAT = 512;
  final O_EXCL = 2048;
  final O_NOCTTY = 131072;
  final O_TRUNC = 1024;
  final O_APPEND = 8;
  final O_NONBLOCK = 4;
  final O_NDELAY = 4;
  final O_SYNC = 128;
  final O_FSYNC = 128;
  final O_ASYNC = 64;
  final O_DIRECTORY = 1048576;
  final O_NOFOLLOW = 256;
  final O_CLOEXEC = 16777216;
  final O_DSYNC = 4194304;

  final TIOCSWINSZ = 2148037735;
}
