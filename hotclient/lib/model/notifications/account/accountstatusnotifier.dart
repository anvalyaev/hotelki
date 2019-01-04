import '../../notification.dart';
import '../../models/account.dart';
import '../../model.dart';
import '../../../interactor/index.dart';

class AccountkStatusNotifier extends Notification {
  bool whenNotify(Model model) {
    return model is IAccount;
  }

  void grabData(Model model) {
    if (!(model is IAccount)) return;
    IAccount account = model;
    AccountStatus status = account.status;
    data = status;
  }
}