import 'package:dio/dio.dart';
import 'package:eco_shop/features/auth/data/models/login_dto.dart';
import 'package:eco_shop/features/auth/data/models/register_dto.dart';

abstract class AuthDataSource {
  Future<Map<String, dynamic>> getRegister(
      {required String email,
      required String password,
      required String username,
      required String phoneNumber});
  Future<Map<String, dynamic>> getLogin(
      {required String email,
      required String password,
      required String username});
}

class AuthDataSourceImpl implements AuthDataSource {
  final Dio dio;
  AuthDataSourceImpl({required this.dio});

  @override
  Future<Map<String, dynamic>> getRegister(
      {required String email,
      required String password,
      required String username,
      required String phoneNumber}) async {
    final Response response = await dio.post(
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
    final Response response = await dio.post(
        "http://localhost:5050/api/v1/auth/login",
        data: LoginDto(username: username, password: password)
            .toMap());
    return response.data;
  }
}
