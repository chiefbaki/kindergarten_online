import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';
part 'token_dto.g.dart';

@JsonSerializable()
class TokenDto extends TokenEntity {
  TokenDto({required super.refresh, required super.access});

  factory TokenDto.fromJson(Map<String, dynamic> json) =>
      _$TokenDtoFromJson(json);
}
