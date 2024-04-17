import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/auth/domain/entity/response/login_res_entity.dart';
part 'login_res_dto.g.dart';

@JsonSerializable()
class LoginResDto extends LoginResEntity {
  LoginResDto({required super.refresh, required super.access});

  factory LoginResDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResDtoFromJson(json);
}
