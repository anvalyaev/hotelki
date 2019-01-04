import '../../action.dart';
import '../../models/account.dart';
import '../../../interactor/index.dart';

class InitAccaunt extends Action{
  InitAccaunt(String name, String phone, String password, bool isNew){
    _name = name;
    _phone = phone;
    _password = password;
    _isNew = isNew;
  }
  void doAction(Interactor interactor){
    IAccount account = interactor.account;
    if(_isNew) account.initRegister(_name, _password, _phone);
    else account.initAuthorize(_name, _password, _phone);
  }
  String _name;
  String _phone;
  String _password;
  bool _isNew;
}