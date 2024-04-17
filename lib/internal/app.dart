import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/settings/dio_settings/dio_settings.dart';
import 'package:kindergarten_online/core/config/theme/theme.dart';
import 'package:kindergarten_online/features/auth/data/repositories/login_impl.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/login_usecase.dart';
import 'package:kindergarten_online/features/auth/presentation/cubit/login_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      ],
      child: BlocProvider(
        create: (context) =>
            LoginCubit(useCase: RepositoryProvider.of<LoginUseCase>(context)),
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter().config(),
            theme: theme(),
          ),
        ),
      ),
    );
  }
}
