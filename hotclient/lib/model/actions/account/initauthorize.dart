import '../../action.dart';
import '../../models/account.dart';
import '../../../interactor/index.dart';

class InitAuthorize extends Action{
  InitAuthorize(String login, String password){
    _login = login;
    _password = password;
  }
  void doAction(Interactor interactor){
    IAccount account = interactor.account;
    account.initAuthorize(_login, _password);
  }
  String _login;
  String _password;
}