import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LoginUseCase implements UseCase<DataState<TokenDto>, LoginReqDto> {
  final LoginRep _repository;
  LoginUseCase(this._repository);
  @override
  Future<DataState<TokenDto>> call({required LoginReqDto param}) async {
    final token = _repository.getLogin(entity: param);
    return token;
  }
}
