import 'dart:collection';

class Initializer {
  void addStage(Function stage){
    _initializeQueue.add(stage);
  }
  bool initialize(){
    while(_initializeQueue.isNotEmpty){
      Function stage = _initializeQueue.removeLast();
      stage();
    }
    return true;
  }
  Queue<Function> _initializeQueue = new Queue<Function>();
}
