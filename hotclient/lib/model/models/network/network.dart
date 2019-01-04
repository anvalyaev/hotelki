import 'dart:async';
import 'dart:collection';
import 'package:grpc/grpc.dart';
import '../../model.dart';
import '../../../generated/hot.pb.dart';
import '../../../generated/hot.pbgrpc.dart';
import '../../../projectsettings.dart';
import 'networkrequests/networkrequest.dart';

enum NetworkStatus { online, offline }
abstract class INetwork extends Model{
  INetwork(StreamController<Model> controller) : super(controller);
  void sendRequest(NetworkRequest request);
  NetworkStatus get status; 
}
class Network extends INetwork {
  Network(StreamController<Model> controller) : super(controller) {
    _channel = new ClientChannel(ProjectSettings.serverHost,
        port: ProjectSettings.serverPort,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    _client = new HotClient(_channel);
  }
  void sendRequest(NetworkRequest request) {
    print("Send new request");
    _requests.add(request);
    _handleRequests();
  }

  NetworkStatus get status => _networkStatus;
  set _status(NetworkStatus val) {
    if (_networkStatus != val) {
      _networkStatus = val;
      print("Network status changed: $status");
      modelChanged();
    }
  }

  void _handleRequests() async {
    int count =_requests.length;
    print("Try handle request: $count");
    if (_requests.isEmpty) return;
    try {
      dynamic val = await _requests.last.send(_client);
      _requests.last.callback(val);
      _requests.removeLast();
      _status = NetworkStatus.online;
      if (_updateTimer != null) {
        _updateTimer.cancel();
      }
      _updateTimer = null;
      _handleRequests();
    } catch (exception) {
      print('Network error: $exception');
      _status = NetworkStatus.offline;
      if (_updateTimer == null) {
        _updateTimer = Timer.periodic(
            Duration(milliseconds: ProjectSettings.reconnectTime), (Timer) {
          _handleRequests();
        });
      }
    }
  }

  Queue<NetworkRequest> _requests = new Queue<NetworkRequest>();
  HotClient _client;
  ClientChannel _channel;
  Timer _updateTimer;
  NetworkStatus _networkStatus = NetworkStatus.offline;
}
