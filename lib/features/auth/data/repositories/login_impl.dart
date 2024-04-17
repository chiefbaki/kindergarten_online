import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/login_res_dto.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LoginImpl implements LoginRep {
  final Dio _dio;
  LoginImpl({required Dio dio}) : _dio = dio;

  @override
  Future<LoginResDto> getLogin({required LoginReqDto entity}) async {
    final String url = dotenv.env["LOGIN_URL"]!;
    final Response response = await _dio.post(url, data: entity.toJson());
    return LoginResDto.fromJson(response.data);
  }
}
