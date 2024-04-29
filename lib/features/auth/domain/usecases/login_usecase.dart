import 'package:kindergarten_online/core/usecase/usecase.dart';

import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/auth/domain/entities/request/login_req_entity.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LoginUseCase implements UseCase<DataState<TokenEntity>, LoginReqEntity> {
  final LoginRep _repository;
  LoginUseCase(this._repository);
  @override
  Future<DataState<TokenEntity>> call({required LoginReqEntity param}) async {
    final token = _repository.getLogin(entity: param);
    return token;
  }
}
