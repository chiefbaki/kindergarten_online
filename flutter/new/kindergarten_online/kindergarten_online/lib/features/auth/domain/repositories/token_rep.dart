import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';

abstract interface class TokenRepository {
  Future<void> saveToken({required TokenEntity entity});

  Future<TokenDto> getToken();

  Future<String> getBearerToken();

  Future<void> deleteTokens();
}
