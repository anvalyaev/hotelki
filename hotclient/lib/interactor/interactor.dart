import '../model/index.dart' as Model;
import "dart:async";
import 'package:gate/gate.dart';
import 'dart:isolate';

class Interactor extends Worker {
  Interactor(SendPort sendPort) : super(sendPort);
  Model.WishList get wishListModel {
    if (_wishListModel == null)
      _wishListModel = new Model.WishList(_controller);
    return _wishListModel;
  }

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

  List<Model.Notification> _notifications = [];
  StreamController<Model.Model> _controller =
      StreamController<Model.Model>.broadcast(onListen: () {
    print("onListen");
  }, onCancel: () {
    print("onCancel");
  });
}
