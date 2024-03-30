import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:flutter/material.dart';

class InfoBtn extends StatelessWidget {
  final String title;
  final String img;
  final void Function() onPressed;
  const InfoBtn(
      {super.key,
      required this.title,
      required this.img,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.textFieldColor,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: AppFonts.s16w600.copyWith(color: AppColors.fontColor),
              )
            ],
          )),
    );
  }
}
