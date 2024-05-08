import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:retrofit/retrofit.dart';

class AuthRemoteDataSource {
  final Dio _dio;
  const AuthRemoteDataSource(this._dio);

  Future<HttpResponse<TokenDto>> getLogin({required LoginReqDto entity}) async {
    final Response response = await _dio.post("account/login/",
        data: LoginReqDto(phone: entity.phone, password: entity.password)
            .toJson());

    final TokenDto value = TokenDto.fromJson(response.data);
    debugPrint(value.access);
    final httpResponse = HttpResponse(value, response);
    return httpResponse;
  }

  Future<String> test() async {
    return "Hello";
  }
}
