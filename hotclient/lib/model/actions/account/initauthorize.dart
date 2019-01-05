import '../../action.dart';
import '../../models/account.dart';
import '../../../interactor/index.dart';

class InitAuthorize extends Action{
  InitAuthorize(String email, String password){
    _email = email;
    _password = password;
  }
  void doAction(Interactor interactor){
    IAccount account = interactor.account;
    account.initAuthorize(_email, _password);
  }
  String _email;
  String _password;
}