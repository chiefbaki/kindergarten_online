import 'package:auto_route/auto_route.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/login_page.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/main_page.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/registr_page.dart';
import 'package:kindergarten_online/features/camera/presentation/pages/camera_page.dart';
import 'package:kindergarten_online/features/camera/presentation/pages/menu_page.dart';
import 'package:kindergarten_online/features/news/presentation/pages/news_page.dart';
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
        // Camera
        AutoRoute(
          page: CameraRoute.page,
        ),

        // Menu
        AutoRoute(
          page: MenuRoute.page,
        ),

        // News
        AutoRoute(
          page: NewsRoute.page, initial: true
        )
      ];
}
