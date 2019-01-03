import '../model/index.dart' as Model;
import "dart:async";
import 'package:gate/gate.dart';
import 'dart:isolate';
import 'initializer.dart';
// import 'package:grpc/grpc.dart';
import '../generated/hot.pb.dart';
import '../generated/hot.pbgrpc.dart';



class Interactor extends Worker {
  Interactor(SendPort sendPort) : super(sendPort);

  Model.Network get network {
    if (_network == null) _network = new Model.Network(_controller);
    return _network;
  }

  Model.WishList get wishListModel {
    if (_wishListModel == null)
      _wishListModel = new Model.WishList(_controller);
    return _wishListModel;
  }

  Model.WishList _wishListModel;
  Model.Network _network;

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
//     Auth auth = new Auth();
//     auth.phone = 89890;
//     auth.name = "Test Testovich";
//     auth.password = "AnseArtur";

//     Model.InitRegister request = new Model.InitRegister(auth, (dynamic data){
//       print('Data: $data');
//     });

// new Timer.periodic(Duration(seconds: 2), (Timer){
//   network.sendRequest(request);
// });
    

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
