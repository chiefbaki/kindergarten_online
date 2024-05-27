import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_btn.dart';
import 'package:kindergarten_online/generated/l10n.dart';


@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    Imgs.pencil,
                    height: 180.h,
                  ),
                ],
              ),
              ClipOval(
                child: Image.asset(
                  Imgs.img,
                  width: 100.w,
                ),
              ),
              25.verticalSpace,
              Text(
                S.of(context).welcome,
                style: context.textTheme.displayLarge,
              ),
              10.verticalSpace,
              Text(
                S.of(context).mainPageAdvice,
                style: context.textTheme.displaySmall!
                    .copyWith(color: AppColors.lightGrey),
                textAlign: TextAlign.center,
              ),
              10.verticalSpace,
              Stack(
                children: [
                  Image.asset(Imgs.back),
                  Positioned(
                    bottom: 270,
                    left: 105,
                    right: 105,
                    child: CustomBtn(
                      name: S.of(context).enter,
                      onPressed: () {
                        _goToLogin(context);
                      },
                    ),
                  ),
                  // Positioned(
                  //   bottom: 200,
                  //   left: 100,
                  //   child: CustomBtn(
                  //     name: "Регистрация",
                  //     onPressed: () {
                  //       context.router.push(const RegistrRoute());
                  //     },
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _goToLogin(BuildContext context) {
    context.router.push(const LoginRoute());
  }
}
