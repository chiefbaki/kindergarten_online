import 'package:kindergarten_online/src/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/src/features/auth/domain/entities/response/token_entity.dart';

extension ToEntityExt on TokenDto {
  TokenEntity toEntity() => TokenEntity(refresh: refresh, access: access);
}

extension FromEntityExt on TokenEntity {
  TokenDto fromEntity() => TokenDto(refresh: refresh, access: access);
}
