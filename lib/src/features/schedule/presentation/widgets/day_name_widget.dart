import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

class DayName extends StatelessWidget {
  const DayName({super.key, required this.textStyle, required this.title});

  final TextTheme textStyle;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle.titleSmall!.copyWith(color: AppColors.white),
    );
  }
}
