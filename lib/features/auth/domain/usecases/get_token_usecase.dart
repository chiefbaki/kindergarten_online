import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/features/auth/domain/entity/response/token_entity.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/token_rep.dart';

class GetTokenUseCase implements UseCase<TokenEntity?, void> {
  final TokenRepository _repository;

  GetTokenUseCase(this._repository);

  @override
  Future<TokenEntity?> call({required void param}) async {
    return _repository.getToken();
  }
}
