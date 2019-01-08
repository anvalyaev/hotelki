// import 'package:flutter/material.dart';
import 'viewmodel.dart';
import '../widget/wishlist.dart' as Widget;
import '../model/index.dart' as Models;
import '../model/actions/wishlist/additem.dart' as Action;
import '../model/actions/wishlist/removeitem.dart' as Action;
import '../model/notifications/wishlist/changed.dart';

abstract class WishList extends ViewModel<Widget.WishList> {
  WishList() {
    subscribeToNotification(new Changed(), (Models.Notification notification) {
      Changed changed = notification;
      setState(() {
        wishList = changed.data;
      });
    });
  }

  void addWishListItem(String name) => executeAction(new Action.AddItem(name));
  void removeWishListItem(int index) =>
      executeAction(new Action.RemoveItem(wishList.elementAt(index).id));
  List<Models.WishItem> wishList = [];

  set selectedItemIndex(int val) {
    setState(() {
      _selectedItemIndex = val;
    });
  }

  int get selectedItemIndex => _selectedItemIndex;
  int _selectedItemIndex = -1;
}
