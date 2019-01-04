import 'package:grpc/grpc.dart';
import '../../../../generated/hot.pb.dart';
import '../../../../generated/hot.pbgrpc.dart';
import 'networkrequest.dart';

class InitAuthorize extends NetworkRequest{
InitAuthorize(String name, String password, String phone, void callback(dynamic)) : super(callback){
  _auth = new AuthRequest();
  _auth.name = name;
  _auth.password = password;
  _auth.phone = phone;
}
@override
dynamic send(HotClient client){
  return client.initAuthorize(_auth);
}
AuthRequest _auth;
}