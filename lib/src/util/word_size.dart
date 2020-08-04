int wordSize() {
  var t = 1;
  var i = 0;

  for (i = 0; i < 65; i++) {
    t <<= 1;

    if (t == 0) {
      return i + 1;
    }
  }

  return 64;
}
