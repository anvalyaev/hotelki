import '../model.dart';
import 'dart:async';
import 'network/network.dart';
import 'network/networkrequests/changewishlist.dart';
import 'network/networkrequests/getwishlist.dart';
import 'network/networkrequests/subscribewishlist.dart';
import 'account.dart';
import '../../generated/hot.pb.dart' as grpc;
import '../../generated/hot.pbgrpc.dart';

enum Operation { add, remove, update }

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
    switch (event.action) {
      case WishListEvent_Action.ADD:
        _list.wishItem.add(event.wishItem);
        modelChanged();
        break;
      case WishListEvent_Action.REMOVE:
        print('Remove wish list operation...');
        _list.wishItem.removeWhere((grpc.WishItem item){return (item.wiId == event.wishItem.wiId);});
        modelChanged();
        break;
      case WishListEvent_Action.UPDATE:
        print('Update wish list operation...');
        grpc.WishItem item = _list.wishItem.firstWhere((grpc.WishItem item){return (item.wiId == event.wishItem.wiId);});
        item.title = event.wishItem.title;
        item.description = event.wishItem.description;
        break;
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
    switch (operation) {
      case Operation.add:
        event.action = WishListEvent_Action.ADD;
        break;
      case Operation.remove:
        event.action = WishListEvent_Action.REMOVE;        
        break;
      case Operation.update:
        event.action = WishListEvent_Action.UPDATE;            
        break;
      default:
    }
    _network.sendRequest(ChangeWishList(event, (dynamic) {}));
  }

  List<WishItem> get items => _list.wishItem;

  grpc.WishList _list = new grpc.WishList();
  INetwork _network;
  IAccount _account;
}
