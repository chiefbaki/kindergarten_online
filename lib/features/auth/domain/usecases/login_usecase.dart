import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/login_res_dto.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LoginUseCase implements UseCase<LoginResDto, LoginReqDto> {
  final LoginRep _repository;

  LoginUseCase({required LoginRep repository}) : _repository = repository;

  @override
  Future<LoginResDto> call({required LoginReqDto param}) async {
    return _repository.getLogin(entity: param);
  }
}
