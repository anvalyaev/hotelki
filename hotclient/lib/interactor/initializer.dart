import 'dart:collection';

class Initializer {
  void addStage(bool stage()){
    _initializeQueue.add(stage);
  }
  bool initialize(){
    while(_initializeQueue.isNotEmpty){
      print("before initialize");
      if(!Function.apply(_initializeQueue.removeLast(), [])) return false;
      print("after initialize");
    }
    return true;
  }
  Queue<Function> _initializeQueue;
}
