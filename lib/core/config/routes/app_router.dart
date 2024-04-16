import 'package:auto_route/auto_route.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/login_page.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/main_page.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/registr_page.dart';
import 'package:kindergarten_online/features/home/presentation/pages/home_page.dart';
import 'package:kindergarten_online/features/home/presentation/pages/menu_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Main
        AutoRoute(
          page: MainRoute.page,
        ),
        // Auth
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: RegistrRoute.page,
        ),
        // Home
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(page: MenuRoute.page, initial: true),
      ];
}
