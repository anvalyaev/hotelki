import '../../action.dart';
import '../../models/account.dart';
import '../../../interactor/index.dart';

class InitRegister extends Action{
  InitRegister(String email, String password, {Map<String, String> params}){
    _email = email;
    _password = password;
    _params = params;
  }
  void doAction(Interactor interactor){
    IAccount account = interactor.account;
    account.initRegister(_email, _password, _params);
  }
  String _email = '';
  String _password = '';
  Map<String, String> _params = Map<String, String>();
}