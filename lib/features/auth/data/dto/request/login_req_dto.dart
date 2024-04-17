import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/auth/domain/entity/request/login_req_entity.dart';
part 'login_req_dto.g.dart';

@JsonSerializable()
class LoginReqDto extends LoginReqEntity {
  LoginReqDto({required super.phone, required super.password});

  factory LoginReqDto.fromJson(Map<String, dynamic> json) =>
      _$LoginReqDtoFromJson(json);
  Map<String, dynamic> toJson() => _$LoginReqDtoToJson(this);
}
