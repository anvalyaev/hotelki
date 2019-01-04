import '../model/index.dart' as Model;
import "dart:async";
import 'package:gate/gate.dart';
import 'dart:isolate';
import 'initializer.dart';

class Interactor extends Worker {
  Interactor(SendPort sendPort) : super(sendPort);

  Model.INetwork get network {
    if (_network == null) _network = new Model.Network(_controller);
    return _network;
  }

  Model.IAccount get account {
    if (_account == null) _account = new Model.Account(_controller, network);
    return _account;
  }

  Model.WishList get wishListModel {
    if (_wishListModel == null)
      _wishListModel = new Model.WishList(_controller);
    return _wishListModel;
  }

  Model.INetwork _network;
  Model.IAccount _account;
  Model.WishList _wishListModel;

  onNewMessage(dynamic data) {
    print("New message from controller: $data");
    if (data is Model.Notification) {
      _notifications.add(data);
    } else if (data is Model.Action) {
      Model.Action action = data;
      action.doAction(this);
    }
  }

  onWork() {
    _controller.stream.listen((Model.Model model) {
      for (Model.Notification notification in _notifications) {
        if (notification.whenNotify(model)) {
          notification.grabData(model);
          send(notification);
        }
      }
    });
  }

  Initializer _initializer = new Initializer();
  List<Model.Notification> _notifications = [];
  StreamController<Model.Model> _controller =
      StreamController<Model.Model>.broadcast(onListen: () {
    print("onListen");
  }, onCancel: () {
    print("onCancel");
  });
}
