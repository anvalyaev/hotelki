import '../../action.dart';
import '../../models/wishlist.dart';
import '../../../interactor/index.dart';
import '../../../generated/hot.pbgrpc.dart';

class AddItem extends Action{
  AddItem(String title, String description){
    _title = title;
    _description = description;
  }
  void doAction(Interactor interactor){
    WishItem item = new WishItem();
    item.title = _title;
    item.description = _description;
    item.wiId = '';

    interactor.wishListModel.changeItem(item, Operation.add);
  }
  String _title;
  String _description;
}