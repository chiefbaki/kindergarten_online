import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_btn.dart';

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
                    Images.pencil,
                    height: 180.h,
                  ),
                ],
              ),
              ClipOval(
                child: Image.asset(
                  Images.img,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "Добро пожаловать!",
                style: textStyle.displayLarge,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Для пользования нашего приложения\nвыполните вход или зарегистрируйтесь,\nесли Вы у нас впервые.",
                style: textStyle.displaySmall!
                    .copyWith(color: AppColors.lightGrey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.h,
              ),
              Stack(
                children: [
                  Image.asset(Images.back),
                  Positioned(
                    bottom: 270,
                    left: 100,
                    child: CustomBtn(
                      name: "Вход",
                      onPressed: () {
                        context.router.push(const LoginRoute());
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
}
