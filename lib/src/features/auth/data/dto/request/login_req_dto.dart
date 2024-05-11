import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_req_dto.g.dart';

@JsonSerializable()
class LoginReqDto {
  @JsonKey(name: "phone")
  final String phone;
  @JsonKey(name: "password")
  final String password;
  const LoginReqDto({required this.phone, required this.password});

  factory LoginReqDto.fromJson(Map<String, dynamic> json) =>
      _$LoginReqDtoFromJson(json);
  Map<String, dynamic> toJson() => _$LoginReqDtoToJson(this);
}
