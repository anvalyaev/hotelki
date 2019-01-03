import '../../action.dart';
import '../../wishlist.dart';
import '../../../interactor/index.dart';

class RemoveItem extends Action{
  RemoveItem(int id){
    _id = id;
  }
  void doAction(Interactor interactor){
    List<WishItem> itemsToRemove = interactor.wishListModel.items.where((WishItem item){
      return item.id == _id;
    });
    for(WishItem item in itemsToRemove){
      interactor.wishListModel.removeItem(item);
    }
  }
  int _id;
}