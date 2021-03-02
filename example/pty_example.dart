import 'package:pty/pty.dart';

void main() async {
  await Future.delayed(Duration(microseconds: 1000));

  final pty = PseudoTerminal.start('bash', []);
  pty.out.listen((data) {
    print(data);
  });

  await Future.delayed(Duration(microseconds: 1000));
}
