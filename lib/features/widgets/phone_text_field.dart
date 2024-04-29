import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class PhoneTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  final bool isReadOnly;
  const PhoneTextField(
      {super.key,
      required this.textStyle,
      required this.hintText,
      required this.controller,
      this.isReadOnly = false});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: isReadOnly,
      controller: controller,
      style: textStyle.displaySmall!.copyWith(color: AppColors.grey),
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
