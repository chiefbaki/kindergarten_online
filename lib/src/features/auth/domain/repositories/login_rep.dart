import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/auth/domain/entities/request/login_req_entity.dart';
import 'package:kindergarten_online/src/features/auth/domain/entities/response/token_entity.dart';

abstract interface class LoginRep {
  Future<DataState<TokenEntity>> getLogin({required LoginReqEntity entity});
  Future<DataState> logOut();
}