import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/token_rep.dart';

class GetTokenUseCase implements UseCase<TokenDto, void> {
  final TokenRepository _repository;

  GetTokenUseCase(this._repository);

  @override
  Future<TokenDto> call({void param}) async {
    return _repository.getToken();
  }
}
