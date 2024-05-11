import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/theme/theme.dart';
import 'package:kindergarten_online/src/core/config/service_locator/locator.dart';
import 'package:kindergarten_online/src/features/auth/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:kindergarten_online/src/features/auth/presentation/logout_cubit/logout_cubit.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/chat_users_bloc/chat_users_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/contact_bloc/contact_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/create_group_bloc/create_group_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/messages_bloc/messages_bloc.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/bloc/creativity_bloc/creativity_bloc.dart';
import 'package:kindergarten_online/src/features/news/presentation/bloc/news_bloc.dart';
import 'package:kindergarten_online/src/features/profile/presentation/blocs/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:kindergarten_online/src/features/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:kindergarten_online/src/features/services/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:kindergarten_online/src/features/services/presentation/blocs/product_bloc/product_bloc.dart';
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
        BlocProvider(
          create: (context) => locator<MessagesBloc>(),
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
