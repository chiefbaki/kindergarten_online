import 'package:get_it/get_it.dart';
import 'package:kindergarten_online/core/config/settings/dio/dio_interceptor.dart';
import 'package:kindergarten_online/features/auth/data/repositories/login_impl.dart';

final locator = GetIt.instance;

void setup() {
  final dioSettings = DioSettings();
  locator.registerFactory<DioSettings>(() => dioSettings);
  locator.registerSingleton(() => LoginImpl(dio: dioSettings.dio));
}