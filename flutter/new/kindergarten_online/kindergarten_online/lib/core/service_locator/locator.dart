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
import 'package:kindergarten_online/features/creativity/data/data_sources/remote/remote_creativity_data_impl.dart';
import 'package:kindergarten_online/features/creativity/data/repositories/creativity_list_impl.dart';
import 'package:kindergarten_online/features/creativity/domain/repositories/creativity_list_rep.dart';
import 'package:kindergarten_online/features/creativity/domain/usecases/creativity_list_usecase.dart';
import 'package:kindergarten_online/features/creativity/domain/usecases/search_creativity_usecase.dart';
import 'package:kindergarten_online/features/creativity/presentation/cubits/creativity_cubit/creativity_cubit.dart';
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
import 'package:kindergarten_online/features/services/data/data_sources/remote/remote_services_data.dart';
import 'package:kindergarten_online/features/services/data/repositories/category_impl.dart';
import 'package:kindergarten_online/features/services/domain/repositories/category_rep.dart';
import 'package:kindergarten_online/features/services/domain/usecases/category_usecase.dart';
import 'package:kindergarten_online/features/services/presentation/cubits/category_cubit/category_cubit.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  // Local storage
  locator.registerFactory(() => const FlutterSecureStorage());
  locator.registerFactory<TokenStorage>(() => TokenStorage(locator()));
  locator.registerSingleton<TokenRepository>(TokenImpl(locator()));
  locator.registerSingleton(SaveTokenUseCase(locator()));
  locator.registerSingleton(GetTokenUseCase(locator()));
  locator.registerSingleton(DeleteTokenUseCase(locator()));

  // Network
  // locator.registerFactory<DioSettings>(() => DioSettings(locator()));
  locator.registerLazySingleton(() => DioSettings(locator<TokenRepository>()));

  // Remote
  locator
      .registerFactory(() => AuthRemoteDataSource(locator<DioSettings>().dio));
  locator.registerSingleton(RemoteProfileSource(locator<DioSettings>().dio));
  locator.registerSingleton(RemoteNewsData(locator<DioSettings>().dio));
  locator.registerSingleton(RemoteCreativityData(locator<DioSettings>().dio));
  locator.registerSingleton(RemoteServicesData(locator<DioSettings>().dio));

  // Dependencies
  locator.registerFactory<LoginRep>(() => LoginImpl(locator()));
  locator.registerSingleton<ProfileRep>(ProfileImpl(locator()));
  locator
      .registerLazySingleton<EditProfileRep>(() => EditProfileImpl(locator()));
  locator.registerSingleton<NewsRep>(NewsImpl(locator<RemoteNewsData>()));
  locator.registerSingleton<CreativityListRep>(
      CreativityListImpl(locator<RemoteCreativityData>()));
  locator.registerSingleton<CategoryRep>(
      CategoryImpl(locator<RemoteServicesData>()));

  // UseCases
  locator.registerSingleton(LoginUseCase(locator()));
  locator.registerSingleton(ProfileUseCase(locator()));
  locator.registerLazySingleton(() => EditProfileUseCase(locator()));
  locator.registerSingleton(NewsUseCase(locator<NewsRep>()));
  locator.registerSingleton(CreativityUseCase(locator<CreativityListRep>()));
  locator
      .registerSingleton(SearchCreativityUseCase(locator<CreativityListRep>()));
  locator.registerSingleton(CategoryUseCase(locator<CategoryRep>()));

  // Cubits
  locator.registerSingleton(LoginCubit(
    useCase: locator<LoginUseCase>(),
    saveTokenUseCase: locator(),
  ));
  locator.registerSingleton(ProfileCubit(locator<ProfileUseCase>()));
  locator.registerLazySingleton(() => EditProfileCubit(locator()));
  locator.registerSingleton(NewsCubit(locator<NewsUseCase>()));
  locator.registerSingleton(CreativityCubit(
      locator<CreativityUseCase>(), locator<SearchCreativityUseCase>()));
  locator.registerSingleton(CategoryCubit(locator<CategoryUseCase>()));
}
