import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final Widget btn;
  final Widget? widget;
  final double height;
  const CustomAlertDialog(
      {super.key,
      required this.title,
      required this.btn,
      this.widget,
      this.height = 422});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: SizedBox(
        height: height,
        child: Column(
          children: [
            Image.asset(
              Images.curt,
              width: 200,
              height: 224,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              title,
              style: AppFonts.s24w700.copyWith(color: AppColors.fontColor),
              textAlign: TextAlign.center,
            ),
            widget ?? const SizedBox(),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 311,
              child: btn,
            )
          ],
        ),
      ),
    );
  }
}
