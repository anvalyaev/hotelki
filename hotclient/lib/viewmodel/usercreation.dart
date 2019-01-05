import 'viewmodel.dart';
import '../widget/index.dart' as Widget;
import '../model/index.dart' as Models;
import '../model/notifications/account/accountstatusnotifier.dart';
import '../model/actions/account/initregister.dart' as Action;
import 'package:flutter/material.dart';

abstract class UserCreation extends ViewModel<Widget.UserCreation> {
  UserCreation() {
    nameController.addListener(() {
      name = nameController.text;
    });
    phoneController.addListener(() {
      phone = phoneController.text;
    });
    emailController.addListener(() {
      email = emailController.text;
    });
    passwordController.addListener(() {
      password = passwordController.text;
    });
    genderController.addListener(() {
      gender = genderController.text;
    });

    subscribeToNotification(new AccountkStatusNotifier(),
        (Models.Notification notification) {
      Models.AccountStatus status = notification.data;
      if (status == Models.AccountStatus.authorized) {
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
  void initRegister() =>
      executeAction(new Action.InitRegister(email, password));
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
  DateTime birthDate = DateTime.now();
  String name = "";
  String phone = "";
  String email = "";
  String password = "";
  String gender = "";

  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController genderController = new TextEditingController();
}
