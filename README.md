# pty

<p>
    <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/TerminalStudio/pty">
    <img alt="GitHub issues" src="https://img.shields.io/github/issues-raw/TerminalStudio/pty">
    <img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/TerminalStudio/pty">
</p>

Pty for Dart and Flutter. Provides the ability to create processes with pseudo terminal file descriptors.

## Status

| **Platform**  | **JIT(Debug)** | **AOT(Release)** |
| ------------- | :------------: | :--------------: |
| **Windows**   |      WIP       |       WIP        |
| **Linux x64** |     Crash      |      Passed      |
| **Linux x86** |   Not tested   |    Not tested    |
| **macOS**     |   Not tested   |    Not tested    |

## Usage

A simple usage example:

```dart
import 'package:pty/pty.dart';

void main() async {
  final pty = Pty();

  pty.resize(80, 25);

  final proc = pty.exec('vi');

  final data = await pty.read();
  print(data.length);

  proc.kill();

  await proc.wait();
}

```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/TerminalStudio/pty/issues

## License

This project is licensed under an MIT license.