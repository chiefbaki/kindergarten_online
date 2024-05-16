import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Function()? onPressed;
  final TextEditingController controller;
  const CustomTextField(
      {super.key,
      required this.textStyle,
      required this.hintText,
      this.obscureText = false,
      this.onPressed,
      required this.controller});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: textStyle.displaySmall!.copyWith(color: AppColors.grey),
      obscureText: obscureText,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        suffixIcon: onPressed == null
            ? const SizedBox()
            : IconButton(
                onPressed: onPressed,
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.navyBlue,
                ),
              ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        hintText: hintText,
        hintStyle: textStyle.displaySmall!.copyWith(color: AppColors.lightGrey),
      ),
    );
  }
}
