import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';

class WebSocketClient {
  IOWebSocketChannel? _channel;
  WebSocketClient(this._channel);

  void connect(String url, String token) {
    if (_channel != null && _channel?.closeCode != null) {
      debugPrint("Already connected");
    }
    debugPrint("Connecting to the server");
    _channel =
        IOWebSocketChannel.connect(url, headers: {"Authorization": token});
    _channel?.stream.listen((data) {
      debugPrint(data);
    }, onDone: () {
      debugPrint("Connection closed");
    }, onError: (error) {
      debugPrint(error);
    });
  }

  void send({String? msg}) {
    if (_channel != null && _channel?.closeCode == null) {
      debugPrint("Not connected");
    }
    _channel?.sink.add(msg);
  }

  void disconnect() {
    if (_channel != null && _channel?.closeCode == null) {
      debugPrint("Disconnected");
    }
    _channel?.sink.close();
  }
}
