# pty

<p>
  <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/TerminalStudio/pty">
  <img alt="GitHub issues" src="https://img.shields.io/github/issues-raw/TerminalStudio/pty">
  <img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/TerminalStudio/pty">
</p>

Pty for Dart and Flutter. Provides the ability to create processes with pseudo terminal file descriptors.

## Status

[![test](https://github.com/TerminalStudio/pty/actions/workflows/dart.yml/badge.svg)](https://github.com/TerminalStudio/pty/actions/workflows/dart.yml)


| **Platform**  | **JIT(Debug)** | **AOT(Release)** |
| ------------- | :------------: | :--------------: |
| **Windows**   |     Crash      |      Works       |
| **Linux x64** |     Works      |      Works       |
| **Linux x86** |   Not tested   |    Not tested    |
| **macOS**     |     Works      |      Works       |

## Usage

A simple usage example:

```dart
import 'package:pty/pty.dart';

void main() async {
  final pty = PseudoTerminal.start('bash', []);

  pty.write('ls\n');

  pty.out.listen((data) {
    print(data);
  });

  print(await pty.exitCode);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/TerminalStudio/pty/issues

## License

This project is licensed under an MIT license.