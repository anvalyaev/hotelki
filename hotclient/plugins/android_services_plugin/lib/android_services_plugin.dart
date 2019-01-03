import 'dart:async';

import 'package:flutter/services.dart';

class AndroidServices {
  static const MethodChannel _channel =
      const MethodChannel('android_services_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<String> startCustomService() async {
    final String res = await _channel.invokeMethod('startCustomService');
    return res;
  }
}