import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:kindergarten_online/src/core/config/settings/dio_interceptor.dart';
import 'package:kindergarten_online/src/core/utils/resources/logger.dart';
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

final sl = GetIt.instance;

Future<void> setup() async {
  // Logger
  sl.registerFactory(() => Logging());
  // Local storage
  sl.registerFactory(() => const FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      ));
  sl.registerFactory<LocalTokenStorage>(() => LocalTokenStorage(sl()));
  sl.registerSingleton<TokenRepository>(TokenImpl(sl()));
  sl.registerSingleton(SaveTokenUseCase(sl()));
  sl.registerSingleton(GetTokenUseCase(sl()));
  sl.registerSingleton(DeleteTokenUseCase(sl()));

  // Network
  // sl.registerFactory<DioSettings>(() => DioSettings(sl()));
  sl.registerFactory(
      () => DioSettings(sl<TokenRepository>(), sl<Logging>().log));

  // Remote
  sl.registerFactory(() => AuthRemoteDataSource(sl<DioSettings>().dio));
  sl.registerLazySingleton(() => RemoteProfileSource(sl<DioSettings>().dio));
  sl.registerLazySingleton(() => RemoteNewsData(sl<DioSettings>().dio));
  sl.registerLazySingleton(() => RemoteCreativityData(sl<DioSettings>().dio));
  sl.registerLazySingleton(() => RemoteServicesData(sl<DioSettings>().dio));
  sl.registerLazySingleton(() => RemoteChatData(
        sl<DioSettings>().dio,
      ));

  // Web Socket client
  // sl.registerSingleton<IOWebSocketChannel>(IOWebSocketChannel());
  // sl.registerFactory(() => WebSocketClient(sl<IOWebSocketChannel>()));

  // Dependencies
  sl.registerFactory<LoginRep>(() => LoginImpl(sl(), sl<LocalTokenStorage>()));
  sl.registerSingleton<ProfileRep>(ProfileImpl(sl()));
  sl.registerLazySingleton<EditProfileRep>(() => EditProfileImpl(sl()));
  sl.registerSingleton<NewsRep>(NewsImpl(sl<RemoteNewsData>()));
  sl.registerSingleton<CreativityListRep>(
      CreativityListImpl(sl<RemoteCreativityData>()));
  sl.registerSingleton<CategoryRep>(CategoryImpl(sl<RemoteServicesData>()));
  sl.registerSingleton<ChatRepository>(ChatImpl(sl<RemoteChatData>()));

  // UseCases
  sl.registerSingleton(LoginUseCase(sl()));
  sl.registerSingleton(LogoutUseCase(sl()));
  sl.registerSingleton(ProfileUseCase(sl()));
  sl.registerLazySingleton(() => EditProfileUseCase(sl()));
  sl.registerSingleton(NewsUseCase(sl<NewsRep>()));
  sl.registerSingleton(CreativityUseCase(sl<CreativityListRep>()));
  sl.registerSingleton(SearchCreativityUseCase(sl<CreativityListRep>()));
  sl.registerSingleton(CategoryUseCase(sl<CategoryRep>()));
  sl.registerSingleton(ProductUseCase(sl<CategoryRep>()));
  sl.registerSingleton(ContactUseCase(sl<ChatRepository>()));
  sl.registerLazySingleton(() => CreateGroupUseCase(sl<ChatRepository>()));
  sl.registerLazySingleton(() => ChatListUseCase(sl<ChatRepository>()));
  sl.registerLazySingleton(() => MessagesUseCase(sl<ChatRepository>()));

  // Cubit
  sl.registerLazySingleton(() => LogoutCubit(sl<LogoutUseCase>()));

  // Blocs
  sl.registerSingleton(LoginBloc(
    useCase: sl<LoginUseCase>(),
    saveTokenUseCase: sl(),
  ));
  sl.registerSingleton(ProfileBloc(sl<ProfileUseCase>()));
  sl.registerLazySingleton(() => EditProfileBloc(sl()));
  sl.registerSingleton(NewsBloc(sl<NewsUseCase>()));
  sl.registerSingleton(
      CreativityBloc(sl<CreativityUseCase>(), sl<SearchCreativityUseCase>()));
  sl.registerSingleton(CategoryBloc(sl<CategoryUseCase>()));
  sl.registerSingleton(ProductBloc(sl<ProductUseCase>()));
  sl.registerSingleton(ContactBloc(sl<ContactUseCase>()));
  sl.registerLazySingleton(() => CreateGroupBloc(sl<CreateGroupUseCase>()));
  sl.registerLazySingleton(() => ChatUsersBloc(sl<ChatListUseCase>()));
  sl.registerLazySingleton(() => MessagesBloc(sl<MessagesUseCase>()));
}
