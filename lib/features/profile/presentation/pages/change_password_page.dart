import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/widgets/custom_btn.dart';
import 'package:kindergarten_online/features/widgets/custom_float_btn.dart';
import 'package:kindergarten_online/features/widgets/custom_text_field.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';

@RoutePage()
class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _oldPassword = TextEditingController();
  final _newPassword = TextEditingController();
  final _confirmNewPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: "Пароль"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Старый пароль:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                        textStyle: textStyle,
                        hintText: "Старый пароль",
                        onPressed: () {},
                        controller: _oldPassword),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Новый пароль:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                        textStyle: textStyle,
                        hintText: "Старый пароль",
                        onPressed: () {},
                        controller: _newPassword),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Подтверждение нового пароля:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                        textStyle: textStyle,
                        hintText: "Старый пароль",
                        onPressed: () {},
                        controller: _confirmNewPassword),
                    SizedBox(
                      height: 25.h,
                    ),
                    Center(
                        child: CustomBtn(
                            onPressed: () {}, name: "Сохранить изменения"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const CustomFloatBtn(isToSwitch: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
    );
  }
}
