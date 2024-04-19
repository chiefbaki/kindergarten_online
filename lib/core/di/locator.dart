import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:kindergarten_online/core/config/settings/dio/dio_interceptor.dart';
import 'package:kindergarten_online/features/auth/data/local/token_storage.dart';
import 'package:kindergarten_online/features/auth/data/repositories/login_impl.dart';
import 'package:kindergarten_online/features/auth/data/repositories/token_impl.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/token_rep.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/delete_token_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/get_token_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/login_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/save_token_usecase.dart';
import 'package:kindergarten_online/features/auth/presentation/cubit/login_cubit.dart';

final locator = GetIt.instance;

void setup() {
  const storage = FlutterSecureStorage();
  locator.registerFactory<DioSettings>(() => DioSettings());
  locator.registerSingleton<TokenStorage>(TokenStorage(storage));

  locator.registerFactory<LoginRep>(
      () => LoginImpl(dio: locator<DioSettings>().dio));
  locator.registerSingleton<TokenRepository>(TokenImpl(locator()));

  locator.registerSingleton(LoginUseCase(repository: locator()));
  locator.registerSingleton(SaveTokenUseCase(locator()));
  locator.registerSingleton(GetTokenUseCase(locator()));
  locator.registerSingleton(DeleteTokenUseCase(locator()));

  locator.registerSingleton(LoginCubit(
      useCase: locator<LoginUseCase>(), saveTokenUseCase: locator()));
}
