import 'package:dartz/dartz.dart';
import 'package:eco_shop/core/utils/error/failure.dart';

abstract interface class AuthRepositoryInterface {
  Future<Map<String, dynamic>> getRegister(
      {required String email,
      required String password,
      required String username,
      required String phoneNumber});

  Future<Map<String, dynamic>> getLogin(
      {required String email,
      required String password,
      required String username});

  Future<Map<String, dynamic>> getConfirm({required String code});
}
