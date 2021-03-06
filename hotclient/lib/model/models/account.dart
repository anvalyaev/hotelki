import 'dart:async';
import '../model.dart';
import 'network/network.dart';
import 'network/networkrequests/initauthorize.dart';
import 'network/networkrequests/initregister.dart';
import '../../generated/hot.pbgrpc.dart';

enum AccountStatus  { not_authorized, authorization, authorized }
abstract class IAccount extends Model  {
  IAccount(StreamController<Model> controller)
      : super(controller);
AccountStatus get status;
int get error;
User get currentUser;
void initRegister(String email, String password, Map<String, String> params);  
void initAuthorize(String login, String password);
}
class Account extends IAccount {
  Account(StreamController<Model> controller, this._network)
      : super(controller);

  AccountStatus get status => _status;
  int get error => _error;
  User get currentUser => _currentUser;
  void initRegister(String email, String password, Map<String, String> params) {
    _network.sendRequest(InitRegister(email, password, (dynamic data) {
      if (data is RegisterAnswer) {
        RegisterAnswer answer = data;
        if(answer.err == 0){
          _currentUser = answer.user;
          _error = 0;
          _status = AccountStatus.authorized;
          modelChanged();
          return;
        }
        else{
          _currentUser = null;
          _error = answer.err;
          _status = AccountStatus.not_authorized;
          modelChanged();
          return;   
        }
      }
    }));
    _status = AccountStatus.authorization;
    modelChanged();
  }
  void initAuthorize(String email, String password) {
      _network.sendRequest(InitAuthorize(email, password, (dynamic data) {
      if (data is AuthorizeAnswer) {
        AuthorizeAnswer answer = data;
        if(answer.err == 0){
          _currentUser = answer.user;
          _error = answer.err;
          _status = AccountStatus.authorized;
          modelChanged();
          return;
        }
        else{
          _currentUser = null;
          _error = answer.err;
          _status = AccountStatus.not_authorized;
          modelChanged();
          return;   
        }
      }
    }));
    _status = AccountStatus.authorization;
    modelChanged();  
  }
  AccountStatus _status = AccountStatus.not_authorized;
  int _error = 0;
  User _currentUser;
  INetwork _network;
}
