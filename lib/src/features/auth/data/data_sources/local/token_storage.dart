import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kindergarten_online/src/core/config/constants/storage_constants.dart';
import 'package:kindergarten_online/src/core/config/services/service_locator.dart';
import 'package:kindergarten_online/src/core/utils/resources/logger.dart';
import 'package:kindergarten_online/src/features/auth/data/dto/response/token_dto.dart';

class LocalTokenStorage {
  final FlutterSecureStorage _storage;
  LocalTokenStorage(this._storage);

  final _log = sl<Logging>();

  Future<void> deleteTokens() async {
    await _storage.deleteAll();
  }

  Future<void> saveToken({required TokenDto entity}) async {
    await _storage.write(key: StorageConsts.accessToken, value: entity.access);
    await _storage.write(
        key: StorageConsts.refreshToken, value: entity.refresh);
  }

  Future<TokenDto> getToken() async {
    try {
      final access = await _storage.read(key: StorageConsts.accessToken);
      final refresh = await _storage.read(key: StorageConsts.refreshToken);
      return TokenDto(refresh: refresh ?? "", access: access ?? "");
    } on PlatformException catch (e) {
      _log.log.warning(e);
    }
    return TokenDto(refresh: "", access: "");
  }
}
