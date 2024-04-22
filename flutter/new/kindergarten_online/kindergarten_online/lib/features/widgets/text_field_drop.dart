import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';

class TextFieldDrop extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isReadOnly;
  const TextFieldDrop(
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
      style: textStyle.displaySmall!.copyWith(color: AppColors.lightGrey),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Image.asset(
          Images.dropDown,
          width: 16,
          height: 8,
        ),
        hintStyle: textStyle.displaySmall!.copyWith(color: AppColors.lightGrey),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      ),
    );
  }
}
