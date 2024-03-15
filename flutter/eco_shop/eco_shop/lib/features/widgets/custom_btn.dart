import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../core/config/themes/app_colors.dart';

class CustomBtn extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const CustomBtn({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: 343,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: Text(
            title,
            style: AppFonts.s16w600,
          )),
    );
  }
}
