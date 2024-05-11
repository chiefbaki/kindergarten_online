import 'package:kindergarten_online/src/core/usecase/usecase.dart';
import 'package:kindergarten_online/src/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/src/features/auth/domain/repositories/token_rep.dart';

class SaveTokenUseCase implements UseCase<void, TokenEntity> {
  final TokenRepository _repository;

  SaveTokenUseCase(this._repository);

  @override
  Future<void> call({required TokenEntity param}) async {
    _repository.saveToken(entity: param);
  }
}
