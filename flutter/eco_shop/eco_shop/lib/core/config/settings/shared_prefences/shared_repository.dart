abstract interface class SharedPrefsRepository {
  Future<void> saveValue({required String key, required String value});
  Future<String> getValue({required String key});
}
