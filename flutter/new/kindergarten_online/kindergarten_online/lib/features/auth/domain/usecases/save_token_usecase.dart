import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/token_rep.dart';

class SaveTokenUseCase implements UseCase<void, TokenDto> {
  final TokenRepository _repository;

  SaveTokenUseCase(this._repository);

  @override
  Future<void> call({required TokenDto param}) async {
    await _repository.saveToken(entity: param);
  }
}
