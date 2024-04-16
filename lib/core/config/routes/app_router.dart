import 'package:auto_route/auto_route.dart';
import 'package:kindergarten_online/features/auth/presentation/pages/main_page.dart';
part 'app_router.gr.dart';


@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [

    // Main 
    AutoRoute(page: MainRoute.page, initial:  true)
  ];
  
}