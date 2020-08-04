abstract class Proc {
  int get pid;

  void kill();
  
  Future<void> wait();

  void waitSync();
}
