import 'package:flutter/material.dart';
import '../viewmodel/index.dart' as ViewModel;
import '../widget/wishlist.dart' as Widgets;

class Main extends ViewModel.Main {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Widgets.WishList(),
        appBar: AppBar(
          title: Center(child: Text("My Wish List")),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {showEditWish(context);},
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.people),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
