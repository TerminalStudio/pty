abstract class Proc {
  // int get hProcess;

  void kill();
  
  Future<void> wait();

  void waitSync();
}
