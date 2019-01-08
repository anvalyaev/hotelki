import 'package:grpc/grpc.dart';
import '../../../../generated/hot.pb.dart';
import '../../../../generated/hot.pbgrpc.dart';
import 'networkrequest.dart';

class ChangeWishList extends NetworkRequest{
ChangeWishList(WishListEvent event, void callback(dynamic)) : super(callback){
  _event = event;
}
@override
dynamic send(HotClient client){
  return client.changeWishList(_event);
}
WishListEvent _event;
}