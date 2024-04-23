import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/auth/domain/entities/request/login_req_entity.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';

abstract interface class LoginRep {
  Future<DataState<TokenEntity>> getLogin({required LoginReqEntity entity});
}
