import 'dart:async';
abstract class Model{

  Model(this._controller){
        modelChanged();
  }
  void modelChanged(){
    _controller.sink.add(this);
  }
  StreamController<Model> _controller;
}