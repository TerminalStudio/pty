import 'dart:io';

import 'package:pty/pty.dart';
import 'package:test/test.dart';

void main() {
  test('Can instantiate and kill PseudoTerminal', () async {
    final pty = PseudoTerminal.start(_getShell(), []);
    pty.kill();
    await pty.exitCode;
  }, timeout: Timeout.factor(0.3));

  // on windows PseudoTerminal only works in Flutter release mode..

  // test('Can read exit code', () async {
  //   final pty = PseudoTerminal.start(_getShell(), []);
  //   pty.write('exit 3\n');
  //   expect(await pty.exitCode, equals(3));
  // }, timeout: Timeout.factor(0.3));


  // test('echo test', () async {
  //   final pty = PseudoTerminal.start(_getShell(), []);
  //   pty.write('echo hello world\n');

  //   final output = await pty.out.single.timeout(Duration(seconds: 10));
  //   expect(output, equals('hello world'));

  //   pty.kill();
  //   await pty.exitCode.timeout(Duration(seconds: 10));
  // }, timeout: Timeout.factor(0.3));
}

String _getShell() {
  if (Platform.isWindows) {
    return 'cmd';
  }

  return 'sh';
}
