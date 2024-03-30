import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DashboardRoute.page, initial: true, children: [
          AutoRoute(
            page: HomeRoute.page,
            fullscreenDialog: true,
          ),
          AutoRoute(
            page: BagRoute.page,
          ),
          AutoRoute(
            page: HistoryRoute.page,
          ),
          AutoRoute(page: InfoRoute.page, initial: true)
        ]),

        // Products page
        AutoRoute(
          page: ProductsRoute.page,
        ),
        // Authentification pages
        AutoRoute(
          page: ConfirmEmailRoute.page,
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: RegisterRoute.page,
        ),

        // Ordered product page
        AutoRoute(
          page: OrderedProductRoute.page,
        ),

        // Bag | order pages
        AutoRoute(
          page: OrderRoute.page,
        )
      ];
}
