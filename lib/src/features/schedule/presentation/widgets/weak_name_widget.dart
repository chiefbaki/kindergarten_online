import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';


class WeakName extends StatelessWidget {
  const WeakName({super.key, required this.title, required this.textStyle});

  final String title;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      "ПН",
      style: textStyle.titleSmall!.copyWith(color: AppColors.lightGrey),
    );
  }
}
