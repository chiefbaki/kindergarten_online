import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/services/service_locator.dart';
import 'package:kindergarten_online/src/core/config/theme/theme.dart';
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
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_behavior.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<LogoutCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<ProfileBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<EditProfileBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<NewsBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<CreativityBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<CategoryBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<ProductBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<ContactBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<CreateGroupBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<ChatUsersBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<MessagesBloc>(),
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
          builder: (context, child) =>
              ScrollConfiguration(behavior: CustomBehavior(), child: child!),
        ),
      ),
    );
  }
}
