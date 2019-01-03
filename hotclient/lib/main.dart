import 'package:flutter/material.dart';
import 'widget/application.dart';

//************************************ */
void main() {
   runApp(Application());
}
//************************************ */
//  final StreamSubscription subscription = interacor.model.listen((value) => print('$value'));
//
//  for(int i=1; i<11; i++){
//    interacor.controller.sink.add(i);
//  }


//  //
//  // Initialize a "Single-Subscription" Stream controller
//  //
//  final StreamController ctrl = StreamController<int>.broadcast();
//
//  //
//  // Initialize a single listener which simply prints the data
//  // as soon as it receives it
//  //
//
//  bool isEven(value){
//    return value == 2;
//  }
//
//  final StreamSubscription subscription = ctrl.stream.where(isEven).listen((value) => print('$value'));
////  final StreamSubscription subscription = ctrl.stream.w;
//
//  //
//  // We here add the data that will flow inside the stream
//  //
//  for(int i=1; i<11; i++){
//    ctrl.sink.add(i);
//  }
//
//  //
//  // We release the StreamController
//  //
//  ctrl.close();