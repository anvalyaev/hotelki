import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import '../../../../generated/hot.pb.dart';
import '../../../../generated/hot.pbgrpc.dart';
import 'networkrequest.dart';

class InitRegister extends NetworkRequest {
  InitRegister(String email, String password, void callback(dynamic),
      {Map<String, dynamic> params})
      : super(callback) {
    _auth = new RegisterRequest();
    _auth.email = email;
    _auth.password = password;
    _auth.name = '';
    _auth.gender = '';
    _auth.phone = '';
    _auth.birthdate = Int64(0);
    if (params != null) {
      _auth.name = params['name'];
      _auth.gender = params['gender'];
      _auth.phone = params['phone'];
      DateTime time = params['birthdate'];
      _auth.birthdate = Int64(time.millisecondsSinceEpoch);
    };
  }
  @override
  dynamic send(HotClient client) {
    return client.initRegister(_auth);
  }
  RegisterRequest _auth;
}
