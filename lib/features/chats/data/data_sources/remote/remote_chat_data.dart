import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kindergarten_online/features/chats/data/dto/contact_dto.dart';
import 'package:kindergarten_online/features/chats/data/dto/create_group_res_dto.dart';
import 'package:kindergarten_online/features/chats/domain/entities/req/create_group_req_entity.dart';
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

  Future<HttpResponse<CreateGroupResDto>> createGroup(
      {required CreateGroupReqEntity entity}) async {
    final path = dotenv.env["CREATE_GROUP"];
    final Response response = await _dio.post(path ?? "",
        data: {"name": entity.name, "members": entity.members});
    final data = CreateGroupResDto.fromJson(response.data);
    return HttpResponse(data, response);
  }
}
