import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Authentification pages
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: RegisterRoute.page,
        ),
        AutoRoute(
          page: ConfirmEmailRoute.page,
        ),
        AutoRoute(
          page: RecoveryRoute.page,
        ),
        // Dashboard
        AutoRoute(page: DashboardRoute.page, children: [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(
            page: BagRoute.page,
          ),
          AutoRoute(
            page: HistoryRoute.page,
          ),
          AutoRoute(
            page: InfoRoute.page,
          )
        ]),

        // Products page
        AutoRoute(
          page: ProductsRoute.page,
          initial: true,
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
