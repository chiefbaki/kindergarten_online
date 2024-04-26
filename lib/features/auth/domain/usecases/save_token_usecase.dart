import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/token_rep.dart';

class SaveTokenUseCase implements UseCase<void, TokenEntity> {
  final TokenRepository _repository;

  SaveTokenUseCase(this._repository);

  @override
  Future<void> call({required TokenEntity param}) async {
    await _repository.saveToken(entity: param);
  }
}