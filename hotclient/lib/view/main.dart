import 'package:flutter/material.dart';
import '../viewmodel/index.dart' as ViewModel;

class Main extends ViewModel.Main {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Main'));
  }
}
