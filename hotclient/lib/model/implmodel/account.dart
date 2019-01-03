import 'dart:async';
import '../model.dart';
import 'network.dart';

enum AccountStatus { not_autorized, autorization, autorized}
class Account extends Model {
  Account(StreamController<Model> controller, this._network) : super(controller) {
  }

  Network _network;
}
