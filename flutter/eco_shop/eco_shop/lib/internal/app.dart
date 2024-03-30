import 'package:eco_shop/core/config/routes/app_router.dart';
import 'package:eco_shop/core/config/settings/dio_settings/dio_settings.dart';
import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository_impl.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/features/auth/data/repositories/register_impl.dart';
import 'package:eco_shop/features/auth/domain/usecases/register_usecase.dart';
import 'package:eco_shop/features/auth/presentation/blocs/email_confirm_bloc/email_confirm_bloc.dart';
import 'package:eco_shop/features/auth/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/auth/presentation/blocs/register_bloc/register_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => SharedPrefsImpl(),
        ),
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepUseCase(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        RepositoryProvider(
          create: (context) => AuthImplentation(
              useCase: RepositoryProvider.of<AuthRepUseCase>(context)),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RegisterBloc(
                prefs: RepositoryProvider.of<SharedPrefsImpl>(context),
                repository: RepositoryProvider.of<AuthImplentation>(context)),
          ),
          BlocProvider(
            create: (context) => LoginBloc(
              prefs: RepositoryProvider.of<SharedPrefsImpl>(context),
                repository: RepositoryProvider.of<AuthImplentation>(context)),
          ),
          BlocProvider(
            create: (context) => EmailConfirmBloc(
                
                repository: RepositoryProvider.of<AuthImplentation>(context)),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              useMaterial3: false,
              appBarTheme: const AppBarTheme(
                  backgroundColor: AppColors.textFieldColor, elevation: 0)),
          routerConfig: AppRouter().config(),
        ),
      ),
    );
  }
}
