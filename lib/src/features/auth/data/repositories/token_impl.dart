import 'package:kindergarten_online/src/features/auth/data/data_sources/local/token_storage.dart';
import 'package:kindergarten_online/src/features/auth/data/mappers/token_mapper.dart';
import 'package:kindergarten_online/src/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/src/features/auth/domain/repositories/token_rep.dart';

class TokenImpl implements TokenRepository {
  final LocalTokenStorage _tokenStorage;
  TokenImpl(this._tokenStorage);
  @override
  Future<void> deleteTokens() async {
    _tokenStorage.deleteTokens();
  }

  @override
  Future<String> getBearerToken() async {
    final token = await _tokenStorage.getToken();

    return "Bearer ${token.access}";
  }

  @override
  Future<TokenEntity> getToken() async {
    final entity = await _tokenStorage.getToken();
    return TokenEntity(access: entity.access, refresh: entity.refresh);
  }

  @override
  Future<void> saveToken({required TokenEntity entity}) async {
    await _tokenStorage.saveToken(entity: entity.fromEntity());
  }
}
