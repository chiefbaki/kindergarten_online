// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:eco_shop/core/config/routes/dashboard.dart' as _i3;
import 'package:eco_shop/features/auth/presentation/pages/confirm_email_page.dart'
    as _i2;
import 'package:eco_shop/features/auth/presentation/pages/login_page.dart'
    as _i7;
import 'package:eco_shop/features/auth/presentation/pages/recovery_page.dart'
    as _i11;
import 'package:eco_shop/features/auth/presentation/pages/register_page.dart'
    as _i12;
import 'package:eco_shop/features/bag/presentation/pages/bag_page.dart' as _i1;
import 'package:eco_shop/features/bag/presentation/pages/order_page.dart'
    as _i8;
import 'package:eco_shop/features/history/presentation/pages/history_page.dart'
    as _i4;
import 'package:eco_shop/features/history/presentation/pages/ordered_product_page.dart'
    as _i9;
import 'package:eco_shop/features/home/data/models/products_dto.dart' as _i15;
import 'package:eco_shop/features/home/presentation/pages/home_page.dart'
    as _i5;
import 'package:eco_shop/features/home/presentation/pages/products_page.dart'
    as _i10;
import 'package:eco_shop/features/info/presentation/info_page.dart' as _i6;
import 'package:flutter/material.dart' as _i14;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    BagRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BagPage(),
      );
    },
    ConfirmEmailRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ConfirmEmailPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HistoryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    InfoRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.InfoPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    OrderRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OrderPage(),
      );
    },
    OrderedProductRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OrderedProductPage(),
      );
    },
    ProductsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsRouteArgs>(
          orElse: () => const ProductsRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ProductsPage(
          key: args.key,
          productList: args.productList,
        ),
      );
    },
    RecoveryRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RecoveryPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.RegisterPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BagPage]
class BagRoute extends _i13.PageRouteInfo<void> {
  const BagRoute({List<_i13.PageRouteInfo>? children})
      : super(
          BagRoute.name,
          initialChildren: children,
        );

  static const String name = 'BagRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ConfirmEmailPage]
class ConfirmEmailRoute extends _i13.PageRouteInfo<void> {
  const ConfirmEmailRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ConfirmEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmEmailRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i13.PageRouteInfo<void> {
  const DashboardRoute({List<_i13.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HistoryPage]
class HistoryRoute extends _i13.PageRouteInfo<void> {
  const HistoryRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.InfoPage]
class InfoRoute extends _i13.PageRouteInfo<void> {
  const InfoRoute({List<_i13.PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OrderPage]
class OrderRoute extends _i13.PageRouteInfo<void> {
  const OrderRoute({List<_i13.PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OrderedProductPage]
class OrderedProductRoute extends _i13.PageRouteInfo<void> {
  const OrderedProductRoute({List<_i13.PageRouteInfo>? children})
      : super(
          OrderedProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderedProductRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProductsPage]
class ProductsRoute extends _i13.PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute({
    _i14.Key? key,
    List<_i15.ProductsDto>? productList,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ProductsRoute.name,
          args: ProductsRouteArgs(
            key: key,
            productList: productList,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const _i13.PageInfo<ProductsRouteArgs> page =
      _i13.PageInfo<ProductsRouteArgs>(name);
}

class ProductsRouteArgs {
  const ProductsRouteArgs({
    this.key,
    this.productList,
  });

  final _i14.Key? key;

  final List<_i15.ProductsDto>? productList;

  @override
  String toString() {
    return 'ProductsRouteArgs{key: $key, productList: $productList}';
  }
}

/// generated route for
/// [_i11.RecoveryPage]
class RecoveryRoute extends _i13.PageRouteInfo<void> {
  const RecoveryRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RecoveryRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.RegisterPage]
class RegisterRoute extends _i13.PageRouteInfo<void> {
  const RegisterRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
