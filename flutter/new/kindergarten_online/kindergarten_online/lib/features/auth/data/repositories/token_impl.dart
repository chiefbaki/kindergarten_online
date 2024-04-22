import 'package:kindergarten_online/features/auth/data/data_sources/local/token_storage.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
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
    return "Bearer ${token.access}";
  }

  @override
  Future<TokenDto> getToken() async {
    return await _tokenStorage.getToken();
  }

  @override
  Future<void> saveToken({required TokenDto entity}) async {
    await _tokenStorage.saveToken(entity: entity);
  }
}
