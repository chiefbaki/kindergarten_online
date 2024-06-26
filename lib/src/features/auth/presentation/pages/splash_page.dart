import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/services/service_locator.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/auth/domain/repositories/token_rep.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_progress_indicator.dart';

const _duration = 2;

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

  Future<void> _redirect() async {
    try {
      final userToken = await sl<TokenRepository>().getToken();
      await Future.delayed(const Duration(seconds: _duration), () {
        if (userToken?.access != null && userToken!.access!.isNotEmpty) {
          debugPrint(userToken.access);
          context.showAlertDialog(showButton: false);
        } else {
          _routeToMain();
        }
      });
    } catch (e) {
      debugPrint(e.toString());
    }
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
