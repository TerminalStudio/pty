import 'package:pty/pty.dart';

void main() async {
  final pty = PseudoTerminal.start('bash', []);

  pty.write('ls\n');

  pty.out.listen((data) {
    print(data);
  });

  print(await pty.exitCode);
}
