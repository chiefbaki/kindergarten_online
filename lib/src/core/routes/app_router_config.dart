import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kindergarten_online/src/core/routes/app_router.dart';
import 'package:kindergarten_online/src/features/camera/presentation/pages/camera_list_page.dart';

class AppRouterConfig {
  static final _rootKey = GlobalKey<NavigatorState>();
  final GoRouter routes =
      GoRouter(navigatorKey: _rootKey, initialLocation: "/cctv", routes: [
    GoRoute(
      name: AppRouterNames.cctv.name,
      path: "/cctv",
      builder: (context, state) => const CameraListPage(),
    ),
    GoRoute(
      name: AppRouterNames.cctv.name,
      path: "/cctv",
      builder: (context, state) => const CameraListPage(),
    ),
  ]);
}

class GoRouterObServer extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint("didPush: $route");
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint("didPop: $route");
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {}

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {}
}
