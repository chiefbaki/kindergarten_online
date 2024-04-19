import 'package:kindergarten_online/features/auth/data/local/token_storage.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/token_rep.dart';

class TokenImpl implements TokenRepository {
  final TokenStorage _tokenStorage;
  TokenImpl(this._tokenStorage);
  @override
  Future<void> deleteTokens() async {
    _tokenStorage.deleteTokens();
  }

  @override
  Future<String> getBearerToken() async {
    final token = await _tokenStorage.getToken();
    return "Bearer ${token!.access}";
  }

  @override
  Future<TokenEntity?> getToken() async {
    return await _tokenStorage.getToken();
  }

  @override
  Future<void> saveToken({required TokenEntity entity}) async {
    await _tokenStorage.saveToken(entity: entity);
  }
}
