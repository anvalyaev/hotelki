import '../../action.dart';
import '../../wishlist.dart';
import '../../../interactor/index.dart';

class AddItem extends Action{
  AddItem(String title){
    _title = title;
  }
  void doAction(Interactor interactor){
    // for(int i = 0; i < 1000000000; i++){
    //   // WishItem item = new WishItem(_title);
    //   // interactor.wishListModel.addItem(item);
    //   // interactor.wishListModel.removeItem(item);
    // }
    interactor.wishListModel.addItem(new WishItem(_title));
  }
  String _title;
}