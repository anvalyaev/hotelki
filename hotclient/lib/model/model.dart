import 'dart:async';
abstract class Model{

  Model(this._controller){
        modelChanged();
  }
  void modelChanged(){
    _controller.sink.add(this);
  }
  void init(){}
  StreamController<Model> _controller;
}