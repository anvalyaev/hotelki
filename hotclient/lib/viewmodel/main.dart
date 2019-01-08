import 'viewmodel.dart';
import '../widget/index.dart' as Widget;
import '../model/index.dart' as Models;
import 'editwish.dart';
// import '../model/notifications/account/accountstatusnotifier.dart';
import 'package:flutter/material.dart';
import '../model/actions/wishlist/additem.dart' as Action;

abstract class Main extends ViewModel<Widget.Main> {
  Main() {
    //   subscribeToNotification(new AccountkStatusNotifier(), (Models.Notification notification) {
    //   AccountkStatusNotifier accountStatusNotifier = notification;
    //   setState(() {
    //     status = accountStatusNotifier.data;
    //   });
    // });
  }

  showEditWish(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/EditWish');
    Map<String, dynamic> data = result;
    executeAction(new Action.AddItem(data['title'], data['description']));
  }
}
