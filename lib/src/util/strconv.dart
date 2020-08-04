import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

extension CString on String {
  Pointer<Uint8> cstr() {
    final units = utf8.encode(this);
    final result = allocate<Uint8>(count: units.length + 1);
    final nativeString = result.asTypedList(units.length + 1);
    nativeString.setAll(0, units);
    nativeString[units.length] = 0;
    return result;
  }
}

extension ToString on Pointer<Int8> {
  String toDartString() {
    return Utf8.fromUtf8(cast());
  }
}
