import 'viewmodel.dart';
import '../widget/index.dart' as Widget;
import '../model/index.dart' as Models;
import '../model/notifications/account/accountstatusnotifier.dart';
import '../model/actions/account/initauthorize.dart' as Action;
import 'package:flutter/material.dart';

abstract class Authorization extends ViewModel<Widget.Authorization> {
  Authorization() {
    subscribeToNotification(new AccountkStatusNotifier(),
        (Models.Notification notification) {
      Models.AccountStatus status = notification.data;
      if (status == Models.AccountStatus.authorized) {
        Navigator.pushNamed(context, '/Main');
      }
      if (status == Models.AccountStatus.authorization) {
        setState(() {
          busy = true;
        });
      }
    });
  }
  void initAuthorization(String login, String password) =>
      executeAction(new Action.InitAuthorize(login, password));
  set obscurePassword(bool val) {
    if (_obscurePassword != val) {
      setState(() {
        _obscurePassword = val;
      });
    }
  }

  bool get obscurePassword => _obscurePassword;
  bool busy = false;
  bool _obscurePassword = true;
}
