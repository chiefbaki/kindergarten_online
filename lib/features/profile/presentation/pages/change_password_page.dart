import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/widgets/custom_btn.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/custom_text_field.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';

const double _paddingUnit = 5;

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

  bool _isOldPassNotVisible = true;
  bool _isNewsPassNotVisible = true;

  @override
  void dispose() {
    super.dispose();
    _oldPassword.dispose();
    _newPassword.dispose();
    _confirmNewPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: _paddingUnit * 5),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: "Пароль"),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: _paddingUnit * 3, vertical: _paddingUnit * 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Старый пароль:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black),
                    ),
                    Gap(
                      _paddingUnit * 2.h,
                    ),
                    CustomTextField(
                        textStyle: textStyle,
                        hintText: "Старый пароль",
                        obscureText: _isOldPassNotVisible,
                        onPressed: () {
                          setState(() {
                            _isOldPassNotVisible = !_isOldPassNotVisible;
                          });
                        },
                        controller: _oldPassword),
                    Gap(
                      _paddingUnit * 4.h,
                    ),
                    Text(
                      "Новый пароль:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black),
                    ),
                    Gap(
                      _paddingUnit * 2.h,
                    ),
                    CustomTextField(
                        textStyle: textStyle,
                        hintText: "Новый пароль",
                        obscureText: _isNewsPassNotVisible,
                        onPressed: () {
                          setState(() {
                            _isNewsPassNotVisible = !_isNewsPassNotVisible;
                          });
                        },
                        controller: _newPassword),
                    Gap(
                      _paddingUnit * 4.h,
                    ),
                    Text(
                      "Подтверждение нового пароля:",
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black),
                    ),
                    Gap(
                      _paddingUnit * 2.h,
                    ),
                    CustomTextField(
                        textStyle: textStyle,
                        obscureText: _isNewsPassNotVisible,
                        hintText: "Подтверждение нового пароля",
                        controller: _confirmNewPassword),
                    Gap(
                      _paddingUnit * 5.h,
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
    );
  }
}
