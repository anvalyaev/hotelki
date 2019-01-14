import '../../action.dart';
import '../../models/wishlist.dart';
import '../../../interactor/index.dart';
import '../../../generated/hot.pbgrpc.dart';

class RemoveItem extends Action{
  RemoveItem(String id){
    _id = id;
  }
  void doAction(Interactor interactor){
    WishItem item = new WishItem();
    item.title = '';
    item.description = '';
    item.wiId = _id;

    interactor.wishListModel.changeItem(item, Operation.remove);
  }
  String _id;
}