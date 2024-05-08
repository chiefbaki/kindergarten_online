import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/widgets/custom_btn.dart';

import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
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
                  width: 100,
                ),
              ),
              Gap(
                50.h,
              ),
              Text(
                S.of(context).welcome,
                style: textStyle.displayLarge,
              ),
              Gap(
                10.h,
              ),
              Text(
                S.of(context).mainPageAdvice,
                style: textStyle.displaySmall!
                    .copyWith(color: AppColors.lightGrey),
                textAlign: TextAlign.center,
              ),
              Gap(
                10.h,
              ),
              Stack(
                children: [
                  Image.asset(Imgs.back),
                  Positioned(
                    bottom: 270,
                    left: 100,
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
