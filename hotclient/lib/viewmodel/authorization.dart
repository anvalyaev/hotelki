import 'viewmodel.dart';
import '../widget/index.dart' as Widget;
import '../model/index.dart' as Models;
import '../model/notifications/account/accountstatusnotifier.dart';
import '../model/actions/account/initauthorize.dart' as Action;
import 'package:flutter/material.dart';

abstract class Authorization extends ViewModel<Widget.Authorization> {
  Authorization() {
    loginController.addListener(() {
      login = loginController.text;
    });
    passwordController.addListener(() {
      password = passwordController.text;
    });
    subscribeToNotification(new AccountkStatusNotifier(),
        (Models.Notification notification) {
      Models.AccountStatus status = notification.data;
      if (Models.AccountStatus.authorized == status) {
        Navigator.of(context).pushNamedAndRemoveUntil('/Main', (Route<dynamic> route) => false);
      }
      if (status == Models.AccountStatus.authorization) {
        setState(() {
          busy = true;
        });
      } else {
        setState(() {
          busy = false;
        });
      }
    });
  }
  void initAuthorization() =>
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
  String login = "";
  String password = "";
  TextEditingController loginController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
}
