import '../model.dart';
import 'dart:async';
import 'network/network.dart';
import 'network/networkrequests/changewishlist.dart';
import 'network/networkrequests/getwishlist.dart';
import 'network/networkrequests/subscribewishlist.dart';
import 'account.dart';
import '../../generated/hot.pb.dart' as grpc;
import '../../generated/hot.pbgrpc.dart';

abstract class Operation {
  Operation({int indexBefore = -1, int indexAfter = -1}) {
    _indexBefore = indexBefore;
    _indexAfter = indexAfter;
  }
  int get indexBefore => _indexBefore;
  int get indexAfter => _indexAfter;
  int _indexBefore = -1;
  int _indexAfter = -1;
}

class Insert extends Operation {
  Insert(int index) : super(indexAfter: index);
}

class Remove extends Operation {
  Remove(int index) : super(indexAfter: index);
}

class Move extends Operation {
  Move(int from, int to) : super(indexBefore: from, indexAfter: to);
}

class Update extends Operation {}

abstract class IWishList extends Model {
  IWishList(StreamController<Model> controller) : super(controller);
  List<WishItem> get items;
  void changeItem(WishItem item, Operation operation);
}

class WishList extends IWishList {
  WishList(StreamController<Model> controller, this._network, this._account)
      : super(controller) {
    print("WishList");
    _network.sendRequest(
        SubscribeWishList(_account.currentUser.usrId, (dynamic data) {
      WishListEvent event = data;
      if (event.indexBefore < 0 && event.indexAfter >= 0) {
        _list.wishItem.insert(event.indexAfter, event.wishItem);
        modelChanged();
      }
    }));
  }

  void update() {
    _network
        .sendRequest(GetWishList(_account.currentUser.usrId, (dynamic data) {
      _list = data;
      modelChanged();
    }));
  }

  void changeItem(WishItem item, Operation operation) {
    WishListEvent event = new WishListEvent();
    event.token = _account.currentUser.usrId;
    event.wishItem = item;
    event.indexBefore = operation.indexBefore;
    event.indexAfter = operation.indexAfter;

    _network.sendRequest(ChangeWishList(event, (dynamic) {}));
  }

  List<WishItem> get items => _list.wishItem;

  grpc.WishList _list = new grpc.WishList();
  INetwork _network;
  IAccount _account;
}
