import 'package:flutter/material.dart';
import '../viewmodel/index.dart' as ViewModel;

class UserCreation extends ViewModel.UserCreation {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('UserCreation'));
  }
}
