import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

class CustomTextBtn extends StatelessWidget {
  final Function()? onPressed;
  final String name;
  final Color color;
  const CustomTextBtn(
      {super.key,
      required this.textStyle,
      required this.onPressed,
      required this.name,
      this.color = AppColors.darkBlue});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          name,
          style: textStyle.displaySmall!.copyWith(color: color),
        ));
  }
}