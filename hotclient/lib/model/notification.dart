import 'model.dart';
abstract class Notification{
  Notification(){
    _id = counter;
    ++counter;
  }
  bool whenNotify(Model model);
  void grabData(Model model);
  
  int get id => _id;

  dynamic data;
  int _id;
  static int counter = 0;
}