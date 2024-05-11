import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:kindergarten_online/src/core/config/settings/dio_interceptor.dart';
import 'package:kindergarten_online/src/features/auth/data/data_sources/local/token_storage.dart';
import 'package:kindergarten_online/src/features/auth/data/data_sources/remote/remote_auth_data.dart';
import 'package:kindergarten_online/src/features/auth/data/repositories/login_impl.dart';
import 'package:kindergarten_online/src/features/auth/data/repositories/token_impl.dart';
import 'package:kindergarten_online/src/features/auth/domain/repositories/login_rep.dart';
import 'package:kindergarten_online/src/features/auth/domain/repositories/token_rep.dart';
import 'package:kindergarten_online/src/features/auth/domain/usecases/delete_token_usecase.dart';
import 'package:kindergarten_online/src/features/auth/domain/usecases/get_token_usecase.dart';
import 'package:kindergarten_online/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:kindergarten_online/src/features/auth/domain/usecases/logout_usecase.dart';
import 'package:kindergarten_online/src/features/auth/domain/usecases/save_token_usecase.dart';
import 'package:kindergarten_online/src/features/auth/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:kindergarten_online/src/features/auth/presentation/logout_cubit/logout_cubit.dart';
import 'package:kindergarten_online/src/features/chats/data/data_sources/remote/remote_chat_data.dart';
import 'package:kindergarten_online/src/features/chats/data/repositories/chat_impl.dart';
import 'package:kindergarten_online/src/features/chats/domain/repositories/chat_repository.dart';
import 'package:kindergarten_online/src/features/chats/domain/usecases/chat_list_usecase.dart';
import 'package:kindergarten_online/src/features/chats/domain/usecases/contact_usecase.dart';
import 'package:kindergarten_online/src/features/chats/domain/usecases/create_group_usecase.dart';
import 'package:kindergarten_online/src/features/chats/domain/usecases/messages_list_usecase.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/chat_users_bloc/chat_users_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/contact_bloc/contact_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/create_group_bloc/create_group_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/messages_bloc/messages_bloc.dart';
import 'package:kindergarten_online/src/features/creativity/data/data_sources/remote/remote_creativity_data_impl.dart';
import 'package:kindergarten_online/src/features/creativity/data/repositories/creativity_list_impl.dart';
import 'package:kindergarten_online/src/features/creativity/domain/repositories/creativity_list_rep.dart';
import 'package:kindergarten_online/src/features/creativity/domain/usecases/creativity_list_usecase.dart';
import 'package:kindergarten_online/src/features/creativity/domain/usecases/search_creativity_usecase.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/bloc/creativity_bloc/creativity_bloc.dart';
import 'package:kindergarten_online/src/features/news/data/data_sources/remote/remote_news_data.dart';
import 'package:kindergarten_online/src/features/news/data/repositories/news_impl.dart';
import 'package:kindergarten_online/src/features/news/domain/repositories/news_rep.dart';
import 'package:kindergarten_online/src/features/news/domain/usecases/news_usecase.dart';
import 'package:kindergarten_online/src/features/news/presentation/bloc/news_bloc.dart';
import 'package:kindergarten_online/src/features/profile/data/data_sources/remote_profile_source.dart';
import 'package:kindergarten_online/src/features/profile/data/repositories/edit_profile_impl.dart';
import 'package:kindergarten_online/src/features/profile/data/repositories/profile_impl.dart';
import 'package:kindergarten_online/src/features/profile/domain/repositories/edit_profile_rep.dart';
import 'package:kindergarten_online/src/features/profile/domain/repositories/profile_rep.dart';
import 'package:kindergarten_online/src/features/profile/domain/usecases/edit_profile_usecase.dart';
import 'package:kindergarten_online/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:kindergarten_online/src/features/profile/presentation/blocs/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:kindergarten_online/src/features/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:kindergarten_online/src/features/services/data/data_sources/remote/remote_services_data.dart';
import 'package:kindergarten_online/src/features/services/data/repositories/category_impl.dart';
import 'package:kindergarten_online/src/features/services/domain/repositories/category_rep.dart';
import 'package:kindergarten_online/src/features/services/domain/usecases/category_usecase.dart';
import 'package:kindergarten_online/src/features/services/domain/usecases/product_usecase.dart';
import 'package:kindergarten_online/src/features/services/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:kindergarten_online/src/features/services/presentation/blocs/product_bloc/product_bloc.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  // Local storage
  locator.registerFactory(() => const FlutterSecureStorage());
  locator
      .registerFactory<LocalTokenStorage>(() => LocalTokenStorage(locator()));
  locator.registerSingleton<TokenRepository>(TokenImpl(locator()));
  locator.registerSingleton(SaveTokenUseCase(locator()));
  locator.registerSingleton(GetTokenUseCase(locator()));
  locator.registerSingleton(DeleteTokenUseCase(locator()));

  // Network
  // locator.registerFactory<DioSettings>(() => DioSettings(locator()));
  locator.registerFactory(() => DioSettings(
        locator<TokenRepository>(),
      ));

  // Remote
  locator
      .registerFactory(() => AuthRemoteDataSource(locator<DioSettings>().dio));
  locator.registerLazySingleton(
      () => RemoteProfileSource(locator<DioSettings>().dio));
  locator
      .registerLazySingleton(() => RemoteNewsData(locator<DioSettings>().dio));
  locator.registerLazySingleton(
      () => RemoteCreativityData(locator<DioSettings>().dio));
  locator.registerLazySingleton(
      () => RemoteServicesData(locator<DioSettings>().dio));
  locator.registerLazySingleton(() => RemoteChatData(
        locator<DioSettings>().dio,
      ));

  // Dependencies
  locator.registerFactory<LoginRep>(
      () => LoginImpl(locator(), locator<LocalTokenStorage>()));
  locator.registerSingleton<ProfileRep>(ProfileImpl(locator()));
  locator
      .registerLazySingleton<EditProfileRep>(() => EditProfileImpl(locator()));
  locator.registerSingleton<NewsRep>(NewsImpl(locator<RemoteNewsData>()));
  locator.registerSingleton<CreativityListRep>(
      CreativityListImpl(locator<RemoteCreativityData>()));
  locator.registerSingleton<CategoryRep>(
      CategoryImpl(locator<RemoteServicesData>()));
  locator
      .registerSingleton<ChatRepository>(ChatImpl(locator<RemoteChatData>()));

  // UseCases
  locator.registerSingleton(LoginUseCase(locator()));
  locator.registerSingleton(LogoutUseCase(locator()));
  locator.registerSingleton(ProfileUseCase(locator()));
  locator.registerLazySingleton(() => EditProfileUseCase(locator()));
  locator.registerSingleton(NewsUseCase(locator<NewsRep>()));
  locator.registerSingleton(CreativityUseCase(locator<CreativityListRep>()));
  locator
      .registerSingleton(SearchCreativityUseCase(locator<CreativityListRep>()));
  locator.registerSingleton(CategoryUseCase(locator<CategoryRep>()));
  locator.registerSingleton(ProductUseCase(locator<CategoryRep>()));
  locator.registerSingleton(ContactUseCase(locator<ChatRepository>()));
  locator.registerLazySingleton(
      () => CreateGroupUseCase(locator<ChatRepository>()));
  locator
      .registerLazySingleton(() => ChatListUseCase(locator<ChatRepository>()));
  locator
      .registerLazySingleton(() => MessagesUseCase(locator<ChatRepository>()));

  // Cubit
  locator.registerLazySingleton(() => LogoutCubit(locator<LogoutUseCase>()));

  // Blocs
  locator.registerSingleton(LoginBloc(
    useCase: locator<LoginUseCase>(),
    saveTokenUseCase: locator(),
  ));
  locator.registerSingleton(ProfileBloc(locator<ProfileUseCase>()));
  locator.registerLazySingleton(() => EditProfileBloc(locator()));
  locator.registerSingleton(NewsBloc(locator<NewsUseCase>()));
  locator.registerSingleton(CreativityBloc(
      locator<CreativityUseCase>(), locator<SearchCreativityUseCase>()));
  locator.registerSingleton(CategoryBloc(locator<CategoryUseCase>()));
  locator.registerSingleton(ProductBloc(locator<ProductUseCase>()));
  locator.registerSingleton(ContactBloc(locator<ContactUseCase>()));
  locator.registerLazySingleton(
      () => CreateGroupBloc(locator<CreateGroupUseCase>()));
  locator
      .registerLazySingleton(() => ChatUsersBloc(locator<ChatListUseCase>()));
  locator.registerLazySingleton(() => MessagesBloc(locator<MessagesUseCase>()));
}
