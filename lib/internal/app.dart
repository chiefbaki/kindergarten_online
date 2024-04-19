import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/settings/dio/dio_interceptor.dart';
import 'package:kindergarten_online/core/config/theme/theme.dart';
import 'package:kindergarten_online/features/auth/data/local/token_storage.dart';
import 'package:kindergarten_online/features/auth/data/repositories/login_impl.dart';
import 'package:kindergarten_online/features/auth/data/repositories/token_impl.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/login_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/save_token_usecase.dart';
import 'package:kindergarten_online/features/auth/presentation/cubit/login_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) =>
              LoginImpl(dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
        RepositoryProvider(
          create: (context) => LoginUseCase(
              repository: RepositoryProvider.of<LoginImpl>(context)),
        ),
        RepositoryProvider(
          create: (context) => TokenStorage(storage),
        ),
        RepositoryProvider(
          create: (context) =>
              TokenImpl(RepositoryProvider.of<TokenStorage>(context)),
        ),
        RepositoryProvider(
          create: (context) =>
              SaveTokenUseCase(RepositoryProvider.of<TokenImpl>(context)),
        ),
      ],
      child: BlocProvider(
        create: (context) => LoginCubit(
            useCase: RepositoryProvider.of<LoginUseCase>(context),
            saveTokenUseCase: RepositoryProvider.of<SaveTokenUseCase>(context)),
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          child: MaterialApp.router(
            localizationsDelegates: [
                
            ],
            locale: const Locale("ru"),
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter().config(),
            theme: theme(),
          ),
        ),
      ),
    );
  }
}
