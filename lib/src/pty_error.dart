class PtyException implements Exception {
  PtyException(this.message);

  final String message;

  @override
  String toString() {
    return message;
  }
}
