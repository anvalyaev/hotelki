import 'dart:async';
import 'package:grpc/grpc.dart' as grpc;

import 'generated/hot.pb.dart';
import 'generated/hot.pbgrpc.dart';
import 'package:objectdb/objectdb.dart';
import 'package:uuid/uuid.dart';

final ObjectDB usersDb = new ObjectDB('../users.db');
final ObjectDB familyDb = new ObjectDB('../familys.db');
final ObjectDB wishListDb = new ObjectDB('../wish_list.db');

class HotService extends HotServiceBase {

  final Uuid uuid = new Uuid();
  @override
  Future<User> initAuthorize(grpc.ServiceCall call, Auth request) async {
    print("initAuthorize $request");
    // List<Map> result = await usersDb.find(request.writeToJsonMap());
    // if(result.length != 1) return null;
    User user = new User();
    user.auth = request;
    // user.mergeFromJsonMap(result[0]);
    return user;
  }

  @override
  Future<User> initRegister(grpc.ServiceCall call, Auth request) async {
    print("initRegister $request");
    Token newToken = new Token();
    newToken.id = uuid.v1();

    User newUser = new User();
    newUser.userId = newToken;
    newUser.auth = request;

    usersDb.insert(newUser.writeToJsonMap());
    
    return newUser;
  }

  @override
  Future<WishList> getWishList(grpc.ServiceCall call, Token request) async {
    print("getWishList $request");
    // TODO: implement getWishList
    return new WishList();
  }

  @override
  Future<Family> getFamily(grpc.ServiceCall call, Token request) async {
    print("getFamily $request");
    // TODO: implement getFamily
    return null;
  }

  @override
  Stream<WishListEvent> subscribeWishList(grpc.ServiceCall call, Token request) async* {
    print("subscribeWishList $request");
    // TODO: implement subscribeWishList
    yield new WishListEvent();
  }

  @override
  Stream<WishFamilyEvent> subscribeFamily(grpc.ServiceCall call, Token request) async* {
    print("subscribeFamily $request");
    // TODO: implement subscribeFamily
    yield new WishFamilyEvent();
  }

  @override
  Future<Success> changeWishList(grpc.ServiceCall call, WishListEvent request) async {
    print("changeWishList $request");
    // TODO: implement changeWishList
    return new Success();
  }

  @override
  Future<Success> changeFamily(grpc.ServiceCall call, WishFamilyEvent request) async {
    print("changeFamily $request");
    // TODO: implement changeFamily
    return new Success();
  }

}

class Server {
  Future<Null> main(List<String> args) async {
    usersDb.open().whenComplete(()async{
      familyDb.open().whenComplete(()async{
        wishListDb.open().whenComplete(()async{
          final server = new grpc.Server([new HotService()]);
          await server.serve(port: 8080);
          print('Server listening on port ${server.port}...');
        });
      });
    });
  }
}