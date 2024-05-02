import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/theme.dart';
import 'package:kindergarten_online/core/service_locator/locator.dart';
import 'package:kindergarten_online/features/auth/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:kindergarten_online/features/auth/presentation/logout_cubit/logout_cubit.dart';
import 'package:kindergarten_online/features/chats/presentation/blocs/chat_users_bloc/chat_users_bloc.dart';
import 'package:kindergarten_online/features/chats/presentation/blocs/contact_bloc/contact_bloc.dart';
import 'package:kindergarten_online/features/chats/presentation/blocs/create_group_bloc/create_group_bloc.dart';
import 'package:kindergarten_online/features/creativity/presentation/bloc/creativity_bloc/creativity_bloc.dart';
import 'package:kindergarten_online/features/news/presentation/bloc/news_bloc.dart';
import 'package:kindergarten_online/features/profile/presentation/blocs/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:kindergarten_online/features/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:kindergarten_online/features/services/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:kindergarten_online/features/services/presentation/blocs/product_bloc/product_bloc.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<LogoutCubit>(),
        ),
        BlocProvider(
          create: (context) => locator<ProfileBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<EditProfileBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<NewsBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<CreativityBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<CategoryBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<ProductBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<ContactBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<CreateGroupBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<ChatUsersBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp.router(
          localizationsDelegates: const [
            S.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          title: "Kindergarten online",
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale("en"),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter().config(),
          theme: theme(),
        ),
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const FlutterSecureStorage storage = FlutterSecureStorage();
//     return MultiRepositoryProvider(
//       providers: [
//         RepositoryProvider(
//           create: (context) => DioSettings(),
//         ),
//         RepositoryProvider(
//           create: (context) =>
//               LoginImpl(dio: RepositoryProvider.of<DioSettings>(context).dio),
//         ),
//         RepositoryProvider(
//           create: (context) => LoginUseCase(
//               repository: RepositoryProvider.of<LoginImpl>(context)),
//         ),
//         RepositoryProvider(
//           create: (context) => TokenStorage(storage),
//         ),
//         RepositoryProvider(
//           create: (context) =>
//               TokenImpl(RepositoryProvider.of<TokenStorage>(context)),
//         ),
//         RepositoryProvider(
//           create: (context) =>
//               SaveTokenUseCase(RepositoryProvider.of<TokenImpl>(context)),
//         ),
//       ],
//       child: BlocProvider(
//         create: (context) => LoginCubit(
//             useCase: RepositoryProvider.of<LoginUseCase>(context),
//             saveTokenUseCase: RepositoryProvider.of<SaveTokenUseCase>(context)),
//         child: ScreenUtilInit(
//           designSize: const Size(375, 812),
//           minTextAdapt: true,
//           splitScreenMode: true,
//           child: MaterialApp.router(
//             localizationsDelegates: [

//             ],
//             locale: const Locale("ru"),
//             debugShowCheckedModeBanner: false,
//             routerConfig: AppRouter().config(),
//             theme: theme(),
//           ),
//         ),
//       ),
//     );
//   }

