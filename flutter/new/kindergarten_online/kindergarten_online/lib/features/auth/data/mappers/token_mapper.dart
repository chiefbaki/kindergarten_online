import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';

extension ToEntityExt on TokenDto {
  TokenEntity toEntity() => TokenEntity(refresh: refresh, access: access);
}
