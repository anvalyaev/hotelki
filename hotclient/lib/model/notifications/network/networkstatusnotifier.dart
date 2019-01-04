import '../../notification.dart';
import '../../models/network/network.dart';
import '../../model.dart';
import '../../../interactor/index.dart';

class NetworkStatusNotifier extends Notification {
  bool whenNotify(Model model) {
    return model is INetwork;
  }

  void grabData(Model model) {
    if (!(model is INetwork)) return;
    INetwork network = model;
    NetworkStatus status = network.status;
    data = status;
  }
}