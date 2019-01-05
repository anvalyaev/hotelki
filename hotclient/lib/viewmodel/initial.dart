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
        if(status == Models.AccountStatus.not_authorized) Navigator.of(context).pushNamedAndRemoveUntil('/Authorization', (Route<dynamic> route) => false);
        else if(status == Models.AccountStatus.authorized) Navigator.of(context).pushNamedAndRemoveUntil('/Main', (Route<dynamic> route) => false);
      });
    });
  }
  Models.AccountStatus status;
}
