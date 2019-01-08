import 'viewmodel.dart';
import '../widget/index.dart' as Widget;
import '../model/index.dart' as Models;
// import '../model/notifications/account/accountstatusnotifier.dart';
// import 'package:flutter/material.dart';

abstract class EditWish extends ViewModel<Widget.EditWish> {
  EditWish() {
    //   subscribeToNotification(new AccountkStatusNotifier(), (Models.Notification notification) {
    //   AccountkStatusNotifier accountStatusNotifier = notification;
    //   setState(() {
    //     status = accountStatusNotifier.data;
    //   });
    // });
  }
}
