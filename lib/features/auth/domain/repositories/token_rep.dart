import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';

abstract interface class TokenRepository {
  Future<void> saveToken({required TokenEntity entity});

  Future<TokenEntity?> getToken();

  Future<String> getBearerToken();

  Future<void> deleteTokens();
}
