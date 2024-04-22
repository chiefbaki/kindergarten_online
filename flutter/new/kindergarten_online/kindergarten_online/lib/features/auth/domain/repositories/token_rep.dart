import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';

abstract interface class TokenRepository {
  Future<void> saveToken({required TokenDto entity});

  Future<TokenDto> getToken();

  Future<String> getBearerToken();

  Future<void> deleteTokens();
}
