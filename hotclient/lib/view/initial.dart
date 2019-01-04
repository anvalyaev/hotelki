import 'package:flutter/material.dart';
import '../viewmodel/index.dart' as ViewModel;
import '../model/index.dart' as Models;
import 'package:flutter/services.dart';
import 'package:android_services_plugin/android_services_plugin.dart';

class Initial extends ViewModel.Initial {
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
