import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Function() onPressed;
  const CustomTextField(
      {super.key,
      required this.textStyle,
      required this.hintText,
      this.obscureText = false,
      required this.onPressed});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        suffixIcon: obscureText
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        hintText: hintText,
        hintStyle: textStyle.displaySmall!.copyWith(color: AppColors.lightGrey),
      ),
    );
  }
}
