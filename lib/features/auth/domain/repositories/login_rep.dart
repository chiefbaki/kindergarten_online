import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/login_res_dto.dart';

abstract interface class LoginRep {
  Future<LoginResDto> getLogin({required LoginReqDto entity});
}
