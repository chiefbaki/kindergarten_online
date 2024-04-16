import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class PhoneTextField extends StatelessWidget {
  final String hintText;
  const PhoneTextField({
    super.key,
    required this.textStyle,
    required this.hintText,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        hintText: hintText,
        hintStyle: textStyle.displaySmall!.copyWith(color: AppColors.lightGrey),
      ),
    );
  }
}
