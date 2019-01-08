import '../../action.dart';
import '../../models/wishlist.dart';
import '../../../interactor/index.dart';
import '../../../generated/hot.pbgrpc.dart';

class UpdateWishList extends Action{
  UpdateWishList(){
  }
  void doAction(Interactor interactor){
    interactor.wishListModel.update();
  }
}