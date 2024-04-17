import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';

abstract interface class LoginRep {
  Future<void> getLogin({required LoginReqDto entity});
}
