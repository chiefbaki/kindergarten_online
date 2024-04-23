import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:kindergarten_online/core/config/settings/dio/dio_interceptor.dart';
import 'package:kindergarten_online/features/auth/data/data_sources/local/token_storage.dart';
import 'package:kindergarten_online/features/auth/data/data_sources/remote/remote_auth_data.dart';
import 'package:kindergarten_online/features/auth/data/repositories/login_impl.dart';
import 'package:kindergarten_online/features/auth/data/repositories/token_impl.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/token_rep.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/delete_token_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/get_token_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/login_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/save_token_usecase.dart';
import 'package:kindergarten_online/features/auth/presentation/cubit/login_cubit.dart';
import 'package:kindergarten_online/features/news/data/data_sources/remote/remote_news_data.dart';
import 'package:kindergarten_online/features/news/data/repositories/news_impl.dart';
import 'package:kindergarten_online/features/news/domain/repositories/news_rep.dart';
import 'package:kindergarten_online/features/news/domain/usecases/news_usecase.dart';
import 'package:kindergarten_online/features/news/presentation/cubits/news_cubit/news_cubit.dart';
import 'package:kindergarten_online/features/profile/data/data_sources/remote_profile_source.dart';
import 'package:kindergarten_online/features/profile/data/repositories/edit_profile_impl.dart';
import 'package:kindergarten_online/features/profile/data/repositories/profile_impl.dart';
import 'package:kindergarten_online/features/profile/domain/repositories/edit_profile_rep.dart';
import 'package:kindergarten_online/features/profile/domain/repositories/profile_rep.dart';
import 'package:kindergarten_online/features/profile/domain/usecases/edit_profile_usecase.dart';
import 'package:kindergarten_online/features/profile/domain/usecases/profile_usecase.dart';
import 'package:kindergarten_online/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:kindergarten_online/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  locator.registerFactory(() => const FlutterSecureStorage());
  // Local storage
  locator.registerFactory<TokenStorage>(() => TokenStorage(locator()));
  locator.registerSingleton<TokenRepository>(TokenImpl(locator()));
  locator.registerSingleton(SaveTokenUseCase(locator()));
  locator.registerSingleton(GetTokenUseCase(locator()));
  locator.registerSingleton(DeleteTokenUseCase(locator()));

  locator.registerSingleton(() => SaveTokenUseCase(locator<TokenRepository>()));

  // Network
  // locator.registerFactory<DioSettings>(() => DioSettings(locator()));
  locator.registerLazySingleton(() => DioSettings(locator<GetTokenUseCase>()));
  // Remote

  locator
      .registerFactory(() => AuthRemoteDataSource(locator<DioSettings>().dio));

  locator.registerSingleton(RemoteProfileSource(locator<DioSettings>().dio));
  locator.registerSingleton(RemoteNewsData(locator<DioSettings>().dio));

  // Dependencies
  locator.registerFactory<LoginRep>(() => LoginImpl(locator()));
  locator.registerSingleton<ProfileRep>(ProfileImpl(locator()));
  locator
      .registerLazySingleton<EditProfileRep>(() => EditProfileImpl(locator()));
  locator.registerSingleton<NewsRep>(NewsImpl(locator<RemoteNewsData>()));

  // UseCases
  locator.registerSingleton(LoginUseCase(locator()));
  locator.registerSingleton(ProfileUseCase(locator()));
  locator.registerLazySingleton(() => EditProfileUseCase(locator()));
  locator.registerSingleton(NewsUseCase(locator<NewsRep>()));
  // Cubits
  locator.registerSingleton(LoginCubit(
      useCase: locator<LoginUseCase>(),
      saveTokenUseCase: locator(),
      getTokenUseCase: locator()));

  locator.registerSingleton(ProfileCubit(locator<ProfileUseCase>()));
  locator.registerLazySingleton(() => EditProfileCubit(locator()));
  locator.registerSingleton(NewsCubit(locator<NewsUseCase>()));
}
