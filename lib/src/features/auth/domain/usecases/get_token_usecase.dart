import 'package:kindergarten_online/src/core/usecase/usecase.dart';
import 'package:kindergarten_online/src/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/src/features/auth/domain/repositories/token_rep.dart';

class GetTokenUseCase implements UseCase<TokenEntity?, void> {
  final TokenRepository _repository;

  GetTokenUseCase(this._repository);

  @override
  Future<TokenEntity?> call({void param}) async {
    return _repository.getToken();
  }
}
