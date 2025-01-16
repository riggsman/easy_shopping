import 'package:web_socket_channel/web_socket_channel.dart';

class RealTimeService {
  final WebSocketChannel _channel =
      WebSocketChannel.connect(Uri.parse('wss://your-server.com'));

  Stream<dynamic> get updates => _channel.stream;

  void closeConnection() {
    _channel.sink.close();
  }
}
