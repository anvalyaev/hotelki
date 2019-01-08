import 'package:flutter/material.dart';
import '../viewmodel/wishlist.dart' as ViewModel;
import 'package:flutter/services.dart';
import 'package:android_services_plugin/android_services_plugin.dart';

class WishList extends ViewModel.WishList {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: wishList.length,
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 0,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Card(
            child: ListTile(
          leading: Icon(Icons.image),
          title: Text(wishList.elementAt(index).title),
          subtitle: Text(wishList.elementAt(index).description),
          selected: index == selectedItemIndex,
          onTap: () {
            selectedItemIndex = index;
          },
        ));
      },
    );
  }
}
