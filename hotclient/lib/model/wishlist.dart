import 'model.dart';
import 'dart:async';
class WishItem {

  static int idCounter = 0;
  final int id;
  String title;

  WishItem(this.title) : id = idCounter{
    idCounter++;
  }
}

class WishList extends Model {
  WishList(StreamController<Model> controller) : super(controller){
    print("WishList");

  }
  void addItem(WishItem item){
    if(_list.contains(item)) return;
    _list.add(item);
    modelChanged();
  }
    void removeItem(WishItem item){
    if(!_list.contains(item)) return;
    _list.remove(item);
    modelChanged();
  }

  List<WishItem> get items =>_list;
 
  List<WishItem> _list = [];

}
