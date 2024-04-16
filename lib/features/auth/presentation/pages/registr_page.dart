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
import 'package:kindergarten_online/features/auth/presentation/widgets/text_field_drop.dart';

@RoutePage()
class RegistrPage extends StatelessWidget {
  const RegistrPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(textStyle: textStyle, title: "Регистрация"),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Номер телефона:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
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
                  Text("Пароль:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                      textStyle: textStyle,
                      hintText: "Введите пароль",
                      onPressed: () {}),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text("Детский сад:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
                  SizedBox(height: 10.h),
                  TextFieldDrop(
                    textStyle: textStyle,
                    hintText: "Название и адрес",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text("Группа:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
                  SizedBox(height: 10.h),
                  TextFieldDrop(
                    textStyle: textStyle,
                    hintText: "Выберите группу/класс",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Column(
                      children: [
                        CustomBtn(onPressed: () {}, name: "Регистрация"),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Уже есть аккаунт?",
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.grey),
                            ),
                            CustomTextBtn(
                                textStyle: textStyle,
                                onPressed: () {
                                  context.router.push(const LoginRoute());
                                },
                                name: "Выполните вход")
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              Images.registrBack,
            )
          ],
        ),
      ),
    );
  }
}
