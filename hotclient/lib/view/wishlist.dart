import 'package:flutter/material.dart';
import '../viewmodel/wishlist.dart' as ViewModel;
import 'package:flutter/services.dart';
import 'package:android_services_plugin/android_services_plugin.dart';

class WishList extends ViewModel.WishList {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HotElki')),
      body: ListView.separated(
        itemCount: wishList.length,
        padding: EdgeInsets.all(8.0),
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 8,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          String title = wishList[index].title;
          return Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(5)),
            // color: Colors.teal.shade700,
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                new Flexible(
                  child: new TextField(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      helperText: "Enter anything"),
                    style: Theme.of(context).textTheme.body1,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          String platformVersion;
          try {
            platformVersion = await AndroidServices.platformVersion;
          } on PlatformException {
            platformVersion = 'Failed to get platform version.';
          }
          // AndroidServices.startCustomService();
          addWishListItem('Item #$counter, $platformVersion');
          counter++;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
    );
  }
}
