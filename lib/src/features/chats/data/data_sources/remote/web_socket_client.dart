import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kindergarten_online/src/features/auth/domain/usecases/get_token_usecase.dart';
import 'package:web_socket_channel/io.dart';

class WebSocketClient {
  // IOWebSocketChannel? _channel;
  final _baseUrl = dotenv.env["WSS_URL"];
  final String _wssUrl;

  WebSocketClient(this._wssUrl, this._tokenUseCase);
  final GetTokenUseCase _tokenUseCase;

  Future<IOWebSocketChannel> connect() async {
    final token = await _tokenUseCase();
    final path = "$_baseUrl$_wssUrl/?token=${token!.access}";
    debugPrint(path);
    return IOWebSocketChannel.connect(path);
  }
}


// void connect(String url, String token) {
  //   if (_channel != null && _channel?.closeCode != null) {
  //     debugPrint("Already connected");
  //   }
  //   debugPrint("Connecting to the server");
  //   _channel =
  //       IOWebSocketChannel.connect(url, headers: {"Authorization": token});
  //   _channel?.stream.listen((data) {
  //     debugPrint(data);
  //   }, onDone: () {
  //     debugPrint("Connection closed");
  //   }, onError: (error) {
  //     debugPrint(error);
  //   });
  // }

  // void send({String? msg}) {
  //   if (_channel != null && _channel?.closeCode == null) {
  //     debugPrint("Not connected");
  //   }
  //   _channel?.sink.add(msg);
  // }

  