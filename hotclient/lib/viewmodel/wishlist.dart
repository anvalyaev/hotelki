// import 'package:flutter/material.dart';
import 'viewmodel.dart';
import '../widget/wishlist.dart' as Widget;
import '../model/index.dart' as Models;
import '../model/actions/wishlist/additem.dart' as Action;
import '../model/actions/wishlist/removeitem.dart' as Action;
import '../model/actions/wishlist/updatewishlist.dart' as Action;
import '../model/notifications/wishlist/changed.dart';
import '../generated/hot.pbgrpc.dart';

abstract class WishList extends ViewModel<Widget.WishList> {
  WishList() {
    subscribeToNotification(new Changed(), (Models.Notification notification) {
      Changed changed = notification;
      setState(() {
        wishList = changed.data;
      });
    });
    executeAction(new Action.UpdateWishList());
  }

  void removeWishListItem(String id) =>
      executeAction(new Action.RemoveItem(id));
      
  List<WishItem> wishList = new List<WishItem>();

  set selectedItemIndex(int val) {
    setState(() {
      _selectedItemIndex = val;
    });
  }

  int get selectedItemIndex => _selectedItemIndex;
  int _selectedItemIndex = -1;
}
