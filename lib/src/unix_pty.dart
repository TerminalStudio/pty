import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:pty/src/pty.dart';
import 'package:pty/src/unistd.dart';
import 'package:pty/src/unix_proc.dart';
import 'package:pty/src/util/globals.dart';
import 'package:pty/src/util/strconv.dart';

class UnixPty implements Pty {
  UnixPty() {
    final dev = Utf8.toUtf8('/dev/ptmx');
    final ptm = unistd.open(dev.cast<Int8>(), O_RDWR | O_CLOEXEC);

    if (unistd.grantpt(ptm) != 0 || unistd.unlockpt(ptm) != 0) {
      print('grantpt or unlockpt failed.');
      return;
    }

    _ptm = ptm;

    print('ptm $ptm');

    final tios = allocate<termios>();
    unistd.tcgetattr(ptm, tios);

    tios.ref.c_iflag |= IUTF8;
    tios.ref.c_iflag &= ~(IXON | IXOFF);
    unistd.tcsetattr(ptm, TCSANOW, tios);
  }

  int _ptm;

  @override
  void resize(int width, int height) {
    final sz = allocate<winsize>();
    sz.ref.ws_row = height;
    sz.ref.ws_col = width;
    unistd.ioctl(_ptm, TIOCSWINSZ, sz.cast<Void>());
  }

  @override
  String readSync() {
    return rawRead(_ptm);
  }

  @override
  Future<String> read() {
    return executor.submitCallable(rawRead, _ptm);
  }

  @override
  void write(String data) {
    final units = utf8.encode(data);
    final cstr = allocate<Uint8>(count: units.length + 1);
    final nativeString = cstr.asTypedList(units.length + 1);
    nativeString.setAll(0, units);
    nativeString[units.length] = 0;
    unistd.write(_ptm, cstr.cast(), units.length);
  }

  @override
  UnixProc exec(
    String executable, {
    String workingDirectory = '.',
    List<String> arguments,
    List<String> environment,
  }) {
    final pid = unistd.fork();
    print('pid $pid');

    if (pid < 0) {
      return null;
    } else if (pid > 0) {
      return UnixProc(pid);
    }

    // final signalsToUnblock = allocate<Uint64>();
    // unistd.sigfillset(signalsToUnblock);
    // unistd.sigprocmask(SIG_UNBLOCK, signalsToUnblock, nullptr);

    // unistd.close(_ptm);

    unistd.setsid();

    final devname = unistd.ptsname(_ptm);
    print('devname ${devname.toDartString()}');

    final pts = unistd.open(devname, O_RDWR);
    print('pts $pts');

    if (pts < 0) {
      return null;
    }

    unistd.dup2(pts, 0);
    unistd.dup2(pts, 1);
    unistd.dup2(pts, 2);

    // unistd.clearenv();

    if (environment != null) {
      for (var env in environment) {
        unistd.putenv(env.cstr().cast());
      }
    }

    // final cwd = workingDirectory.cstr().cast();
    // final chdirResult = unistd.chdir(cwd);
    // print('chdir $chdirResult');

    final file = executable.cstr();

    final argv = allocate<Pointer<Int8>>(count: arguments.length + 2);

    argv.elementAt(0).value = file.cast();
    argv.elementAt(arguments.length + 1).value = nullptr;

    for (var i = 0; i < arguments.length; i++) {
      argv.elementAt(i + 1).value = arguments[i].cstr().cast();
    }

    unistd.execvp(file.cast(), argv);

    return null;
  }
}

String rawRead(int ptm) {
  const bufsize = 4096;
  final buffer = allocate<Int8>(count: bufsize + 1);
  final readlen = unistd.read(ptm, buffer.cast(), bufsize);

  if (readlen == -1) {
    return null;
  } else {
    buffer.elementAt(readlen).value = 0;
    return Utf8.fromUtf8(buffer.cast());
  }
}
