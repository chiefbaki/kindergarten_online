import 'package:eco_shop/features/auth/data/models/login_response_dto.dart';
import 'package:eco_shop/features/auth/domain/repositories/register_rep.dart';
import 'package:eco_shop/features/auth/domain/usecases/register_usecase.dart';

class AuthImplentation implements AuthRepositoryInterface {
  final AuthRepUseCase _useCase;
  AuthImplentation({required AuthRepUseCase useCase}) : _useCase = useCase;

  @override
  Future<Map<String, dynamic>> getRegister({
    required String email,
    required String password,
  }) async {
    return await _useCase.getRegister(
      email: email,
      password: password,
    );
  }

  @override
  Future<LoginResponseDto> getLogin(
      {required String password, required String email}) async {
    return await _useCase.getLogin(password: password, email: email);
  }

  @override
  Future<Map<String, dynamic>> getConfirm({required String code}) async {
    return await _useCase.getConfirm(code: code);
  }
}
