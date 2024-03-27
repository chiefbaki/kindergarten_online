import 'package:dio/dio.dart';
import 'package:eco_shop/features/auth/data/models/login_dto.dart';
import 'package:eco_shop/features/auth/data/models/register_dto.dart';

class RegisterRepUseCase {
  final Dio _dio;
  RegisterRepUseCase({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> getRegister(
      {required String email,
      required String password,
      required String username,
      required String phoneNumber}) async {
    final Response response = await _dio.post(
        "http://localhost:5050/api/v1/auth/register",
        data: RegisterDto(
                email: email,
                password: password,
                phoneNumber: phoneNumber,
                username: username)
            .toJson());
    return response.data;
  }

  Future<Map<String, dynamic>> getLogin(
      {required String email,
      required String password,
      required String username}) async {
    final Response response = await _dio.post(
        "http://localhost:5050/api/v1/auth/login",
        data: LoginDto(email: email, username: username, password: password)
            .toMap());
    return response.data;
  }

  Future<Map<String, dynamic>> getConfirm({required String code}) async {
    final Response response = await _dio.post(
        "http://localhost:5050/api/v1/email/verify",
        data: {"code": code});
    return response.data;
  }
}
