import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/domain/entities/request/login_req_entity.dart';

extension ToEntityExt on LoginReqDto {
  LoginReqEntity toEntity() => LoginReqEntity(phone: phone, password: password);
}

extension FromEntityExt on LoginReqEntity {
  LoginReqDto fromEntity() =>
      LoginReqDto(phone: phone ?? "", password: password ?? "");
}
