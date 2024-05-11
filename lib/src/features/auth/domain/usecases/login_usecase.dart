import 'package:kindergarten_online/src/core/usecase/usecase.dart';

import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/auth/domain/entities/request/login_req_entity.dart';
import 'package:kindergarten_online/src/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/src/features/auth/domain/repositories/login_rep.dart';

class LoginUseCase implements UseCase<DataState<TokenEntity>, LoginReqEntity> {
  final LoginRep _repository;
  LoginUseCase(this._repository);
  @override
  Future<DataState<TokenEntity>> call({required LoginReqEntity param}) async {
    return _repository.getLogin(entity: param);
  }
}
