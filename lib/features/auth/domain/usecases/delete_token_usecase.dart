import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/token_rep.dart';

class DeleteTokenUseCase implements UseCase<void, void> {
  final TokenRepository _repository;
  DeleteTokenUseCase(this._repository);

  @override
  Future<void> call({required void param}) async {
    _repository.deleteTokens();
  }
}
