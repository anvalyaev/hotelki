// import 'package:grpc/grpc.dart';
// import '../generated/hot.pb.dart';
import '../../../../generated/hot.pbgrpc.dart';

abstract class NetworkRequest{
NetworkRequest(void callback(dynamic)){
  _callback = callback;
}
Function get callback => _callback;
dynamic send(HotClient client);

Function _callback;
}

abstract class NetworkStream extends NetworkRequest{
NetworkStream(void callback(dynamic)) : super(callback);
void listen(HotClient client);
@override
dynamic send(HotClient client){
}
}