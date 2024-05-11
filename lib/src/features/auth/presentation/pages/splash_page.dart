import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/service_locator/locator.dart';
import 'package:kindergarten_online/src/core/utils/resources/functions.dart';
import 'package:kindergarten_online/src/features/auth/domain/repositories/token_rep.dart';
import 'package:kindergarten_online/src/features/widgets/custom_progress_indicator.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void _routeToMain() {
    context.router.push(const MainRoute());
  }

  void _openMainMenu() {
    customBottomSheet(context, Theme.of(context).textTheme, showButton: false);
  }

  Future<void> _redirect() async {
    final userToken = await locator<TokenRepository>().getToken();
    await Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        if (userToken?.access != "empty access") {
          debugPrint(userToken?.access);
          _openMainMenu();
        } else {
          _routeToMain();
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _redirect();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CustomProgressIndicator()),
    );
  }
}
