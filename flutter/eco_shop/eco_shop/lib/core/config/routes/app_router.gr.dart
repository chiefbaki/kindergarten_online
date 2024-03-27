// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:eco_shop/core/config/routes/dashboard.dart' as _i3;
import 'package:eco_shop/features/auth/presentation/pages/confirm_email_page.dart'
    as _i2;
import 'package:eco_shop/features/auth/presentation/pages/login_page.dart'
    as _i5;
import 'package:eco_shop/features/auth/presentation/pages/register_page.dart'
    as _i7;
import 'package:eco_shop/features/bag/presentation/bag_page.dart' as _i1;
import 'package:eco_shop/features/home/presentation/pages/home_page.dart'
    as _i4;
import 'package:eco_shop/features/home/presentation/pages/products_page.dart'
    as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    BagRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BagPage(),
      );
    },
    ConfirmEmailRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ConfirmEmailPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    ProductsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProductsPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegisterPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BagPage]
class BagRoute extends _i8.PageRouteInfo<void> {
  const BagRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BagRoute.name,
          initialChildren: children,
        );

  static const String name = 'BagRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ConfirmEmailPage]
class ConfirmEmailRoute extends _i8.PageRouteInfo<void> {
  const ConfirmEmailRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ConfirmEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmEmailRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProductsPage]
class ProductsRoute extends _i8.PageRouteInfo<void> {
  const ProductsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegisterPage]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
