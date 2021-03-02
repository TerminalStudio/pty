class PtyError {
  PtyError(this.message);

  final String message;

  @override
  String toString() {
    return message;
  }
}
