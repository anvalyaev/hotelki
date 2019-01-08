import 'package:grpc/grpc.dart';
import '../../../../generated/hot.pb.dart';
import '../../../../generated/hot.pbgrpc.dart';
import 'networkrequest.dart';

class SubscribeWishList extends NetworkStream{
SubscribeWishList(String token, void callback(dynamic)) : super(callback){
  _token = new Token();
  _token.usrId = token;;
}
@override
void listen(HotClient client) async {
  client.subscribeWishList(_token).listen(callback);
}
Token _token;
}