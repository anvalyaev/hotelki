import 'package:grpc/grpc.dart';
import '../../../../generated/hot.pb.dart';
import '../../../../generated/hot.pbgrpc.dart';
import 'networkrequest.dart';

class InitRegister extends NetworkRequest{
InitRegister(String name, String password, String phone, void callback(dynamic)) : super(callback){
  _auth = new AuthRequest();
  _auth.name = name;
  _auth.password = password;
  _auth.phone = phone;
}
@override
dynamic send(HotClient client){
  return client.initRegister(_auth);
}
AuthRequest _auth;
}