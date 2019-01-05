import 'package:gate/gate.dart';
import 'dart:isolate';
import '../model/index.dart';
import 'dart:async';
import 'interactor.dart';

class InteractorController extends Controller {
  Stream<Notification> get notificationStream => _controller.stream;

  void addNotification(Notification notification) {
    if (state == ControllerState.initialized)
      send(notification);
    else
      _notificationsBuffer.add(notification);
  }
  void removeNotification(int notificationId) {
    if (state == ControllerState.initialized)
      send(notificationId);
  }

  void addAction(Action action) {
    if (state == ControllerState.initialized)
      send(action);
    else
      _actionsBuffer.add(action);
  }

  factory InteractorController() {
    if(_interator.state == ControllerState.uninitialized){
      _interator.startWorking(work);
    }
    return _interator;
  }
  void onNewMessage(dynamic data) {
    print("New message from interactor: $data");
    if (data is Notification) {
      Notification notification = data;
      int id = notification.id;
      print("Notification id: $id");
      _controller.sink.add(data);
    }
  }

  void onError(dynamic err) {
    print("Error: $err");
  }

  void onStateChanged(ControllerState state) {
    print("New controller state: $state");
    if (state == ControllerState.initialized) {
      if (_notificationsBuffer.isNotEmpty) {
        for (Notification notification in _notificationsBuffer) {
          send(notification);
        }
        _notificationsBuffer.clear();
      }
      if (_actionsBuffer.isNotEmpty) {
        for (Action action in _actionsBuffer) {
          send(action);
        }
        _actionsBuffer.clear();
      }
    }
  }

  static void work(SendPort sendPort) {
    new Interactor(sendPort).work();
  }

  StreamController<Notification> _controller =
      StreamController<Notification>.broadcast(onListen: () {
    print("onListen");
  }, onCancel: () {
    print("onCancel");
  });
  List<Notification> _notificationsBuffer = [];
  List<Action> _actionsBuffer = [];
  static final InteractorController _interator =
      new InteractorController._internal();
  InteractorController._internal() {}
}
