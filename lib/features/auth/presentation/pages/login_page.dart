import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_appbar.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_btn.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/phone_text_field.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(
        textStyle: textStyle,
        title: "Вход",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Номер телефона:",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 10.h,
                  ),
                  PhoneTextField(
                    textStyle: textStyle,
                    hintText: "+996 (555) 555-555",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text("Пароль:",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    textStyle: textStyle,
                    hintText: "**************",
                    obscureText: true,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 55.h,
                  ),
                  Column(
                    children: [
                      CustomBtn(
                          onPressed: () {
                            context.router.push(const CameraRoute());
                          },
                          name: "Вход"),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Еще нет аккаунта?",
                            style: textStyle.displaySmall!
                                .copyWith(color: AppColors.lightGrey),
                          ),
                          CustomTextBtn(
                            textStyle: textStyle,
                            onPressed: () {
                              context.router.push(const RegistrRoute());
                            },
                            name: "Зарегистрируйтесь",
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              Images.backLogin,
            )
          ],
        ),
      ),
    );
  }
}
