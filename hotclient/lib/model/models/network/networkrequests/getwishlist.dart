import 'package:grpc/grpc.dart';
import '../../../../generated/hot.pb.dart';
import '../../../../generated/hot.pbgrpc.dart';
import 'networkrequest.dart';

class GetWishList extends NetworkRequest{
GetWishList(String token, void callback(dynamic)) : super(callback){
  _token = new Token();
  _token.usrId = token;;
}
@override
dynamic send(HotClient client){
  return client.getWishList(_token);
}
Token _token;
}