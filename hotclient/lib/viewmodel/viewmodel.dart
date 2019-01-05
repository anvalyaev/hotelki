import '../interactor/index.dart';
import '../model/index.dart' as Models;
import 'package:flutter/material.dart';
import 'dart:async';

abstract class ViewModel<T> extends State {
  ViewModel() {
    print('ViewModel');
  }

  Future executeAction(Models.Action action) async {
    _controller.addAction(action);
  }

  void subscribeToNotification(Models.Notification notification,
      void onNotify(Models.Notification notification)) {
    bool isMyNotification(Models.Notification notification) {
      return _myNotifications.contains(notification.id);
    }

    _myNotifications.add(notification.id);
    _subscriptions.add(_controller.notificationStream
        .where(isMyNotification)
        .listen(onNotify));
    _controller.addNotification(notification);
  }

  @override
  void dispose() {
    print("dispose $runtimeType");
    for (StreamSubscription subscription in _subscriptions) {
      subscription.cancel();
    }
    _subscriptions.clear();

    for (int notificationId in _myNotifications) {
      _controller.removeNotification(notificationId);
    }
    _myNotifications.clear();
    super.dispose();
  }

  InteractorController _controller = new InteractorController();
  List<StreamSubscription> _subscriptions = [];
  Set<int> _myNotifications = new Set<int>();
}
