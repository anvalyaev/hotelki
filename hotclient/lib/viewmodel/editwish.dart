import 'viewmodel.dart';
import '../widget/index.dart' as Widget;
import '../model/index.dart' as Models;
import 'package:flutter/material.dart';
// import '../model/notifications/account/accountstatusnotifier.dart';
// import 'package:flutter/material.dart';

abstract class EditWish extends ViewModel<Widget.EditWish> {
  EditWish() {
    titleController.addListener(() {
      title = titleController.text;
    });
    descriptionController.addListener(() {
      description = descriptionController.text;
    });
  }
  String title = "";
  String description = "";
  TextEditingController titleController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();
}
