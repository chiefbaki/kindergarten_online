import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final VoidCallback? onPressed;
  final TextEditingController controller;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: context.textTheme.displaySmall!.copyWith(color: AppColors.grey),
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
        hintStyle: context.textTheme.displaySmall!
            .copyWith(color: AppColors.lightGrey),
      ),
    );
  }
}
