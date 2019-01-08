import '../model/index.dart' as Model;
import "dart:async";
import 'package:gate/gate.dart';
import 'dart:isolate';
import 'initializer.dart';

class Interactor extends Worker {
  Interactor(SendPort sendPort) : super(sendPort);

  Model.INetwork get network {
    if (_network == null) {
      _network = new Model.Network(_controller);
      _activeModels.add(_network);
    }
    return _network;
  }

  Model.IAccount get account {
    if (_account == null) {
      _account = new Model.Account(_controller, network);
      _activeModels.add(_account);
    }
    return _account;
  }

  Model.WishList get wishListModel {
    if (_wishListModel == null) {
      _wishListModel = new Model.WishList(_controller, network, account);
      _activeModels.add(_wishListModel);
    }
    return _wishListModel;
  }

  onNewMessage(dynamic data) {
    print("New message from controller: $data");
    if (data is Model.Notification) {
      _notifications.add(data);
      _testNotificationOnActiveModels(data);
    } else if (data is Model.Action) {
      Model.Action action = data;
      action.doAction(this);
    } else if (data is int) {
      int notificationId = data;
      _notifications.removeWhere((item) {
        return item.id == notificationId;
      });
    }
  }

  onWork() {
    _controller.stream.listen((Model.Model model) {
      for (Model.Notification notification in _notifications) {
        _testNotification(notification, model);
      }
    });
    _initializer.addStage(() {
      network.init();
    });
    _initializer.addStage(() {
      account.init();
    });
    _initializer.initialize();
  }

  void _testNotification(Model.Notification notification, Model.Model model) {
    if (notification.whenNotify(model)) {
      notification.grabData(model);
      send(notification);
    }
  }

  void _testNotificationOnActiveModels(Model.Notification notification) {
    if (_activeModels.isEmpty) return;
    for (Model.Model model in _activeModels) {
      _testNotification(notification, model);
    }
  }

  Model.INetwork _network;
  Model.IAccount _account;
  Model.WishList _wishListModel;
  List<Model.Model> _activeModels = [];
  Initializer _initializer = new Initializer();
  List<Model.Notification> _notifications = [];
  StreamController<Model.Model> _controller =
      StreamController<Model.Model>.broadcast(onListen: () {
    print("onListen");
  }, onCancel: () {
    print("onCancel");
  });
}
