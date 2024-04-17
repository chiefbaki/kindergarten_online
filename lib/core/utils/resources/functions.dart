import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_btn.dart';

Future<dynamic> wrongLoginDialog(BuildContext context, TextTheme textStyle) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: const EdgeInsets.all(25),
          content: SizedBox(
            height: 145.h,
            width: 230.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ошибка",
                  style:
                      textStyle.displayLarge!.copyWith(color: AppColors.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Пожалуйста, введите корректные имя пользователя и пароль учётной записи. Оба поля зависят от корректности друг друга.",
                  style: textStyle.titleSmall,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                    child: CustomBtn(
                        onPressed: () {
                          // context.router.push(const RegistrRoute());
                          Navigator.pop(context);
                        },
                        name: "Закрыть"))
              ],
            ),
          ),
        );
      });
}
