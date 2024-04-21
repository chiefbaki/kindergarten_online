import 'package:eco_shop/core/config/routes/app_router.dart';
import 'package:eco_shop/core/config/settings/dio_settings/dio_settings.dart';
import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository_impl.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/features/auth/data/repositories/register_impl.dart';
import 'package:eco_shop/features/auth/domain/usecases/register_usecase.dart';
import 'package:eco_shop/features/auth/presentation/blocs/email_confirm_bloc/email_confirm_bloc.dart';
import 'package:eco_shop/features/auth/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:eco_shop/features/bag/data/repositories/delete_card_impl.dart';
import 'package:eco_shop/features/bag/data/repositories/shopping_card_impl.dart';
import 'package:eco_shop/features/bag/domain/usecases/delete_card_usecase.dart';
import 'package:eco_shop/features/bag/domain/usecases/shopping_card_usecase.dart';
import 'package:eco_shop/features/bag/presentation/bloc/delete_card/delete_card_bloc.dart';
import 'package:eco_shop/features/bag/presentation/bloc/shopping_card/shopping_card_bloc.dart';
import 'package:eco_shop/features/home/data/repositories/basket_add_impl.dart';
import 'package:eco_shop/features/home/data/repositories/products_impl.dart';
import 'package:eco_shop/features/home/domain/usecases/basket_add_usecase.dart';
import 'package:eco_shop/features/home/domain/usecases/products_usecase.dart';
import 'package:eco_shop/features/home/presentation/blocs/basket_add_bloc/basket_add_bloc.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_bloc.dart';
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
          create: (context) => DeleteCardImpl(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        RepositoryProvider(
          create: (context) => DeleteCardUseCase(
            repository: RepositoryProvider.of<DeleteCardImpl>(context),
          ),
        ),
        RepositoryProvider(
          create: (context) => ShoppingCardImpl(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        RepositoryProvider(
          create: (context) => ShoppingCardUseCase(
            repository: RepositoryProvider.of<ShoppingCardImpl>(context),
          ),
        ),
        RepositoryProvider(
          create: (context) => BasketAddImpl(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        RepositoryProvider(
          create: (context) => BasketAddUseCase(
            repository: RepositoryProvider.of<BasketAddImpl>(context),
          ),
        ),
        RepositoryProvider(
          create: (context) => ProductsImpl(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        RepositoryProvider(
          create: (context) => ProductsUseCase(
            repository: RepositoryProvider.of<ProductsImpl>(context),
          ),
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
            create: (context) => DeleteCardBloc(
                useCase: RepositoryProvider.of<DeleteCardUseCase>(context)),
          ),
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
          BlocProvider(
            create: (context) => ProductsBloc(
                useCase: RepositoryProvider.of<ProductsUseCase>(context)),
          ),
          BlocProvider(
            create: (context) => BasketAddBloc(
                useCase: RepositoryProvider.of<BasketAddUseCase>(context)),
          ),
          BlocProvider(
            create: (context) => ShoppingCardBloc(
                useCase: RepositoryProvider.of<ShoppingCardUseCase>(context)),
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
