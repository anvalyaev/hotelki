import '../../notification.dart';
import '../../models/wishlist.dart';
import '../../model.dart';
import '../../../interactor/index.dart';

class Changed extends Notification {
  bool whenNotify(Model model) {
    return model is IWishList;
  }

  void grabData(Model model) {
    if (!(model is IWishList)) return;
    IWishList wishListModel = model;
    data = wishListModel.items;
  }
}
