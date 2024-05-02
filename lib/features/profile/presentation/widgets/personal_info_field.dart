import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class PersonalInfoField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final bool isReadOnly;

  const PersonalInfoField(
      {super.key,
      required this.textStyle,
      required this.hintText,
      required this.controller,
      required this.textInputAction,
      this.isReadOnly = false});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      style: textStyle.displayMedium!.copyWith(color: AppColors.lightGrey),
      readOnly: isReadOnly,
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        hintStyle:
            textStyle.displayMedium!.copyWith(color: AppColors.lightGrey),
        hintText: hintText,
      ),
    );
  }
}
