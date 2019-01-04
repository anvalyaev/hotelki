import '../../notification.dart';
import '../../models/wishlist.dart';
import '../../model.dart';
import '../../../interactor/index.dart';

class Changed extends Notification {
  bool whenNotify(Model model) {
    return model is WishList;
  }

  void grabData(Model model) {
    if (!(model is WishList)) return;
    WishList wishListModel = model;
    data = wishListModel.items;
  }
}
