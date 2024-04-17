import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LoginUseCase implements UseCase<void, LoginReqDto> {
  final LoginRep _repository;

  LoginUseCase({required LoginRep repository}) : _repository = repository;

  @override
  Future<void> call({required LoginReqDto param}) async {
    _repository.getLogin(entity: param);
  }
}
