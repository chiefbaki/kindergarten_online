import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kindergarten_online/core/config/constants/storage_constants.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';

class TokenStorage {
  final FlutterSecureStorage _storage;
  TokenStorage(this._storage);

  Future<void> deleteTokens() async {
    await _storage.deleteAll();
  }

  Future<void> saveToken({required TokenEntity entity}) async {
    await _storage.write(key: StorageConsts.accessToken, value: entity.access);
    await _storage.write(
        key: StorageConsts.refreshToken, value: entity.refresh);
  }

  Future<TokenEntity?> getToken() async {
    final access = await _storage.read(key: StorageConsts.accessToken);
    final refresh = await _storage.read(key: StorageConsts.refreshToken);
    if (access == null && refresh == null) {
      return null;
    }
    return TokenEntity(
        refresh: refresh ?? "empty refresh", access: access ?? "empty access");
  }
}
