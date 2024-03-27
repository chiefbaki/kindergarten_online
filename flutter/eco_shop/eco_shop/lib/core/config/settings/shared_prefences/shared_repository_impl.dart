import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsImpl implements SharedPrefsRepository {
  @override
  Future<void> saveValue({required String key, required String value}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  @override
  Future<String> getValue({required String key}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }
}
