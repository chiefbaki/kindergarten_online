import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class CustomTextBtn extends StatelessWidget {
  final Function()? onPressed;
  final String name;
  const CustomTextBtn({
    super.key,
    required this.textStyle,
    required this.onPressed,
    required this.name,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          name,
          style: textStyle.displaySmall!.copyWith(color: AppColors.darkBlue),
        ));
  }
}
