import 'viewmodel.dart';
import '../widget/index.dart' as Widget;
import '../model/index.dart' as Models;
import '../model/notifications/account/accountstatusnotifier.dart';
import 'package:flutter/material.dart';

abstract class Initial extends ViewModel<Widget.Initial> {
  
  Initial() {
    subscribeToNotification(new AccountkStatusNotifier(),
        (Models.Notification notification) {
      AccountkStatusNotifier accountStatusNotifier = notification;
      setState(() {
        status = accountStatusNotifier.data;
        switch (status) {
          case Models.AccountStatus.not_authorized:
            Navigator.pushNamed(context, '/Authorization');
            break;
          case Models.AccountStatus.authorization:
            Navigator.pushNamed(context, '/Initial');
            break;
          case Models.AccountStatus.authorized:
            Navigator.pushNamed(context, '/Main');
            break;
          default:
            Navigator.pushNamed(context, '/Initial');
            break;
        }
      });
    });
  }
  Models.AccountStatus status;
}
