import 'package:dio/dio.dart';
import 'package:eco_shop/features/auth/data/models/login_dto.dart';
import 'package:eco_shop/features/auth/data/models/login_response_dto.dart';
import 'package:eco_shop/features/auth/data/models/register_dto.dart';

class AuthRepUseCase {
  final Dio _dio;
  AuthRepUseCase({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> getRegister({
    required String email,
    required String password,
  }) async {
    final Response response = await _dio.post("auth/register",
        data: RegisterDto(
          email: email,
          password: password,
        ).toJson());
    return response.data;
  }

  Future<LoginResponseDto> getLogin(
      {required String password, required String email}) async {
    final Response response = await _dio.post("auth/login",
        data: LoginDto(email: email, password: password).toMap());
    print(response.data.runtimeType);
    return LoginResponseDto.fromMap(response.data);
  }

  Future<Map<String, dynamic>> getConfirm({required String code}) async {
    final Response response =
        await _dio.post("email/verify", data: {"code": code});
    return response.data;
  }
}
