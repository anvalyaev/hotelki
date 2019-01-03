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
    List<Map> result = await usersDb.find(request.writeToJsonMap());
    if(result.length != 1) return null;
    User user = new User();
    user.mergeFromJsonMap(result[0]);
    return user;
  }

  @override
  Future<User> initRegister(grpc.ServiceCall call, Auth request) async {
    
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
    // TODO: implement getWishList
    return null;
  }

  @override
  Future<Family> getFamily(grpc.ServiceCall call, Token request) async {
    // TODO: implement getFamily
    return null;
  }

  @override
  Stream<WishListEvent> subscribeWishList(grpc.ServiceCall call, Token request) async* {
    // TODO: implement subscribeWishList
    yield null;
  }

  @override
  Stream<WishFamilyEvent> subscribeFamily(grpc.ServiceCall call, Token request) async* {
    // TODO: implement subscribeFamily
    yield null;
  }

  @override
  Future<Success> changeWishList(grpc.ServiceCall call, WishListEvent request) async {
    // TODO: implement changeWishList
    return null;
  }

  @override
  Future<Success> changeFamily(grpc.ServiceCall call, WishFamilyEvent request) async {
    // TODO: implement changeFamily
    return null;
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