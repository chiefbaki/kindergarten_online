import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';


abstract interface class LoginRep {
  Future<TokenDto> getLogin({required LoginReqDto entity});
}
