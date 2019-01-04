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
void initRegister(String name, String password, String phone);  
void initAuthorize(String name, String password, String phone);
}
class Account extends IAccount {
  Account(StreamController<Model> controller, this._network)
      : super(controller);

  AccountStatus get status => _status;
  int get error => _error;
  User get currentUser => _currentUser;
  void initRegister(String name, String password, String phone) {
    _network.sendRequest(InitRegister(name, password, phone, (dynamic data) {
      if (data is AuthAnswer) {
        AuthAnswer answer = data;
        if(answer.status){
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
  void initAuthorize(String name, String password, String phone) {
      _network.sendRequest(InitAuthorize(name, password, phone, (dynamic data) {
      if (data is AuthAnswer) {
        AuthAnswer answer = data;
        if(answer.status){
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
  AccountStatus _status = AccountStatus.not_authorized;
  int _error = 0;
  User _currentUser;
  INetwork _network;
}
