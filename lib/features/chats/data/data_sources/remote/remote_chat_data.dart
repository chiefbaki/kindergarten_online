import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kindergarten_online/features/chats/data/dto/contact_dto.dart';
import 'package:retrofit/dio.dart';

class RemoteChatData {
  final Dio _dio;
  RemoteChatData(this._dio);

  Future<HttpResponse<ContactDto>> getContact() async {
    final path = dotenv.env["ACCOUNT_CONTACTS"];
    final Response response = await _dio.get(path ?? "");
    final data = ContactDto.fromJson(response.data);
    return HttpResponse(data, response);
  }
}
