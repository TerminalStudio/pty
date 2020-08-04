import 'package:pty/pty.dart';

void main() async {
  final pty = Pty();

  pty.resize(50, 20);

  final proc = pty.exec(
    './test.sh',
    workingDirectory: '.',
    arguments: [],
  );

  var count = 1;
  while (true) {
    final data = await pty.read();

    if (data != null) {
      count += data.length;
      print('count ${count}');
    } else {
      break;
    }
  }

  await proc.wait();

  print('kill');
  proc.kill();
}
