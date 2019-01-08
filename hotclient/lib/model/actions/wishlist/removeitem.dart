import '../../action.dart';
import '../../models/wishlist.dart';
import '../../../interactor/index.dart';
import '../../../generated/hot.pbgrpc.dart';

class RemoveItem extends Action{
  RemoveItem(int index){
    _index = index;
  }
  void doAction(Interactor interactor){
    WishItem item = new WishItem();
    item.title = '';
    item.description = '';

    Remove removeOperation = new Remove(_index);
    interactor.wishListModel.changeItem(item, removeOperation);
  }
  int _index;
}