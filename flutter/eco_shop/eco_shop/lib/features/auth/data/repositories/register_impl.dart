import 'package:eco_shop/features/auth/domain/repositories/register_rep.dart';
import 'package:eco_shop/features/auth/domain/usecases/register_usecase.dart';

class AuthImplentation implements AuthRepositoryInterface {
  final RegisterRepUseCase _useCase;
  AuthImplentation({required RegisterRepUseCase useCase}) : _useCase = useCase;

  @override
  Future<Map<String, dynamic>> getRegister(
      {required String email,
      required String password,
      required String username,
      required String phoneNumber}) async {
    return await _useCase.getRegister(
        email: email,
        password: password,
        username: username,
        phoneNumber: phoneNumber);
  }

  Future<Map<String, dynamic>> getLogin(
      {required String email,
      required String password,
      required String username}) async {
    return await _useCase.getLogin(
        email: email, password: password, username: username);
  }

  @override
  Future<Map<String, dynamic>> getConfirm({required String code}) async {
    return await _useCase.getConfirm(code: code);
  }
}
