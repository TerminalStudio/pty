import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:pty/src/pty_core.dart';
import 'package:pty/src/pty_error.dart';
import 'package:pty/src/util/unix_const.dart';
import 'package:pty/src/util/unix_ffi.dart';

void _setNonblock(int fd) {
  var flag = unix.fcntl(fd, consts.F_GETFL);

  flag |= consts.O_NONBLOCK;

  print('flag $flag');

  final ret = unix.fcntl3(fd, consts.F_SETFL, flag);
  if (ret == -1) {
    unix.perror(nullptr);
    // throw PtyError('fcntl3 failed.');
  }
}

class PtyCoreUnix implements PtyCore {
  factory PtyCoreUnix.start(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String>? environment,
  }) {
    final dev = '/dev/ptmx'.toNativeUtf8();
    final ptm = unix.open(dev, consts.O_RDWR | consts.O_CLOEXEC);

    if (unix.grantpt(ptm) != 0) {
      throw PtyException('grantpt failed.');
    }

    if (unix.unlockpt(ptm) != 0) {
      throw PtyException('unlockpt failed.');
    }

    final tios = calloc<termios>();
    unix.tcgetattr(ptm, tios);
    tios.ref.c_iflag |= consts.IUTF8;
    tios.ref.c_iflag &= ~(consts.IXON | consts.IXOFF);
    unix.tcsetattr(ptm, consts.TCSANOW, tios);
    calloc.free(tios);

    final pid = unix.fork();
    if (pid < 0) {
      throw PtyException('fork failed.');
    } else if (pid > 0) {
      // call setsid() to make parent process become session leader.
      unix.setsid();
      _setNonblock(ptm);
      return PtyCoreUnix._(pid, ptm);
    }

    // final signalsToUnblock = allocate<Uint64>();
    // unistd.sigfillset(signalsToUnblock);
    // unistd.sigprocmask(SIG_UNBLOCK, signalsToUnblock, nullptr);
    // unistd.close(_ptm);

    // open slave side of the pty
    final devname = unix.ptsname(ptm);
    final pts = unix.open(devname, consts.O_RDWR);
    unix.close(ptm);

    if (pts < 0) {
      throw PtyException('open pts failed.');
    }

    // redirect stdin
    if (unix.dup2(pts, 0) == -1) {
      throw PtyException('fdup2(pts, 0) ailed.');
    }

    // redirect stdout
    if (unix.dup2(pts, 1) == -1) {
      throw PtyException('fdup2(pts, 1) ailed.');
    }

    // redirect stderr
    if (unix.dup2(pts, 2) == -1) {
      throw PtyException('fdup2(pts, 2) ailed.');
    }

    unix.close(pts);

    // set working environment variables
    if (environment != null) {
      for (var env in environment.entries) {
        unix.setenv(env.key.toNativeUtf8(), env.value.toNativeUtf8(), 1);
      }
    }

    // set working directory
    if (workingDirectory != null) {
      unix.chdir(workingDirectory.toNativeUtf8());
    }

    // build argv
    final argv = calloc<Pointer<Utf8>>(arguments.length + 2);
    argv.elementAt(0).value = executable.toNativeUtf8();
    argv.elementAt(arguments.length + 1).value = nullptr;
    for (var i = 0; i < arguments.length; i++) {
      argv.elementAt(i + 1).value = arguments[i].toNativeUtf8();
    }

    unix.execvp(executable.toNativeUtf8(), argv);

    throw PtyException('unreachable');
  }

  PtyCoreUnix._(this._pid, this._ptm) {
    // final devname = unix.ptsname(_ptm);
    // _pts = unix.open(devname, consts.O_RDWR);
  }

  final int _pid;
  final int _ptm;
  // late final int _pts;

  static const _bufferSize = 4096;
  final _buffer = calloc<Int8>(_bufferSize + 1);

  @override
  String? readNonBlocking() {
    final readlen = unix.read(_ptm, _buffer.cast(), _bufferSize);

    if (readlen == -1) {
      return null;
    }

    return _buffer.cast<Utf8>().toDartString(length: readlen);
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
    return unix.kill(_pid, consts.SIGKILL) == 0;
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

  // @override
  // int get pid {
  //   return _pid;
  // }

  @override
  void write(List<int> data) {
    final buf = calloc<Int8>(data.length);
    buf.asTypedList(data.length).setAll(0, data);
    unix.write(_ptm, buf.cast(), data.length);
    calloc.free(buf);
  }
}
