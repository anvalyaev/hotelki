import 'package:grpc/grpc.dart';
import '../../../../generated/hot.pb.dart';
import '../../../../generated/hot.pbgrpc.dart';
import 'networkrequest.dart';

class InitAuthorize extends NetworkRequest{
InitAuthorize(String email, String password, void callback(dynamic)) : super(callback){
  _auth = new AuthorizeRequest();
  _auth.email = email;
  _auth.password = password;
}
@override
dynamic send(HotClient client){
  return client.initAuthorize(_auth);
}
AuthorizeRequest _auth;
}