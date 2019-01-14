import 'dart:async';
import 'package:grpc/grpc.dart' as grpc;

import 'generated/hot.pb.dart';
import 'generated/hot.pbgrpc.dart';
import 'package:objectdb/objectdb.dart';
import 'package:uuid/uuid.dart';
import 'package:fixnum/fixnum.dart';

final ObjectDB usersDb = new ObjectDB('../users.db');
final ObjectDB familyDb = new ObjectDB('../familys.db');
final ObjectDB wishListDb = new ObjectDB('../wish_list.db');

// enum Operation { unknown, insert, remove, move, update }

class HotService extends HotServiceBase {
  final Uuid uuid = new Uuid();
  StreamController<WishListEvent> _controllerWishListEvent =
      StreamController<WishListEvent>.broadcast(onListen: () {
    print("onListen");
  }, onCancel: () {
    print("onCancel");
  });

  @override
  Future<AuthorizeAnswer> initAuthorize(
      grpc.ServiceCall call, AuthorizeRequest request) async {
    print("initAuthorize $request");
    User user = initUser();

    Map<String, dynamic> findMap = new Map<String, dynamic>();
    findMap['5'] = request.email;
    findMap['7'] = request.password;

    List<Map> result = await usersDb.find(findMap);
    if (result.length != 1) {
      print("error result: $result");
      AuthorizeAnswer answer = new AuthorizeAnswer();
      answer.user = user;
      answer.err = -1;
      return answer;
    } else {
      print("success result: $result");
      Map userMap = result[0];
      user.usrId = userMap['1'];
      user.name = userMap['2'];
      user.gender = userMap['3'];
      user.phone = userMap['4'];
      user.email = userMap['5'];
      // user.birthdate = userMap['6'];
      user.password = userMap['7'];

      AuthorizeAnswer answer = new AuthorizeAnswer();
      answer.user = user;
      answer.err = 0;
      return answer;
    }
  }

  @override
  Future<RegisterAnswer> initRegister(
      grpc.ServiceCall call, RegisterRequest request) async {
    print("initRegister $request");
    User newUser = initUser();

    Map<String, dynamic> findMap = new Map<String, dynamic>();
    findMap['5'] = request.email;
    findMap['7'] = request.password;

    List<Map> result = await usersDb.find(findMap);
    if (result.length >= 1) {
      RegisterAnswer answer = new RegisterAnswer();
      answer.user = newUser;
      answer.err = -1;
      return answer;
    }

    newUser.usrId = uuid.v1();
    newUser.name = request.name;
    newUser.gender = request.gender;
    newUser.phone = request.phone;
    newUser.email = request.email;
    newUser.birthdate = request.birthdate;
    newUser.password = request.password;

    usersDb.insert(newUser.writeToJsonMap());

    RegisterAnswer answer = new RegisterAnswer();
    answer.user = newUser;
    answer.err = 0;

    return answer;
  }

  User initUser() {
    User newUser = new User();
    newUser.usrId = '';
    newUser.name = '';
    newUser.gender = '';
    newUser.phone = '';
    newUser.email = '';
    newUser.birthdate = Int64(0);
    newUser.password = '';
    return newUser;
  }

  @override
  Future<WishList> getWishList(grpc.ServiceCall call, Token request) async {
    WishList res = new WishList();
    res.wlId = 'no_id';
    res.name = "no_name";

    List<Map<dynamic, dynamic>> wishList = await wishListDb.find({'token': request.usrId});

    for(Map<String, dynamic> wishItem in wishList){
      WishItem item = new WishItem();
      item.title = wishItem['title'];
      item.description = wishItem['description'];
      item.wiId = wishItem['_id'];
      res.wishItem.add(item);
    }
    return res;
  }

  // @override
  // Future<Family> getFamily(grpc.ServiceCall call, Token request) async {
  //   print("getFamily $request");
  //   // TODO: implement getFamily
  //   return null;
  // }

  @override
  Stream<WishListEvent> subscribeWishList( grpc.ServiceCall call, Token request) {
    return _controllerWishListEvent.stream.where((WishListEvent event){return event.token == request.usrId;});
  }

  // @override
  // Stream<WishFamilyEvent> subscribeFamily(grpc.ServiceCall call, Token request) async* {
  //   print("subscribeFamily $request");
  //   // TODO: implement subscribeFamily
  //   yield new WishFamilyEvent();
  // }

  @override
  Future<Empty> changeWishList(
      grpc.ServiceCall call, WishListEvent request) async {
    print("changeWishList $request");

    switch (request.action) {
      case WishListEvent_Action.ADD:
        print('Add wish list operation...');
        Map<String, dynamic> wishItem;
        wishItem = new Map<String, dynamic>();
        wishItem["token"] = request.token;
        wishItem["title"] = request.wishItem.title;
        wishItem["description"] = request.wishItem.description;
        wishListDb.insert(wishItem);
        break;
      case WishListEvent_Action.REMOVE:
        print('Remove wish list operation...');
        wishListDb.remove({'token': request.token, '_id': request.wishItem.wiId});
        break;
      case WishListEvent_Action.UPDATE:
        print('Update wish list operation...');
        wishListDb.update({'token': request.token, '_id': request.wishItem.wiId}, {'title': request.wishItem.title, 'description': request.wishItem.title});
        break;
    }

    _controllerWishListEvent.sink.add(request);
    return new Empty();
  }

  // @override
  // Future<Success> changeFamily(grpc.ServiceCall call, WishFamilyEvent request) async {
  //   print("changeFamily $request");
  //   // TODO: implement changeFamily
  //   return new Success();
  // }

}

class Server {
  Future<Null> main(List<String> args) async {
    usersDb.open().whenComplete(() async {
      familyDb.open().whenComplete(() async {
        wishListDb.open().whenComplete(() async {
          final server = new grpc.Server([new HotService()]);
          await server.serve(port: 8080);
          print('Server listening on port ${server.port}...');
        });
      });
    });
  }
}
