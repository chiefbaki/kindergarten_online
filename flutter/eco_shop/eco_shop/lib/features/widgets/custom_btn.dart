import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import '../../core/config/themes/app_colors.dart';

class CustomBtn extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomBtn({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: 343,
      child: ElevatedButton(
          autofocus: false,
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              surfaceTintColor: AppColors.green,
              backgroundColor: AppColors.green,
              disabledBackgroundColor: AppColors.textFieldColor,
              disabledForegroundColor: AppColors.articleColor,
              disabledMouseCursor: SystemMouseCursors.resizeColumn,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: Text(
            title,
            style: AppFonts.s16w600,
          )),
    );
  }
}
