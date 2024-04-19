import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LoginUseCase implements UseCase<TokenDto, LoginReqDto> {
  final LoginRep _repository;

  LoginUseCase({required LoginRep repository}) : _repository = repository;

  @override
  Future<TokenDto> call({required LoginReqDto param}) async {
    return await _repository.getLogin(entity: param);
  }
}
