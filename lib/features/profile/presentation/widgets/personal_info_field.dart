import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class PersonalInfoField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const PersonalInfoField(
      {super.key,
      required this.textStyle,
      required this.hintText,
      required this.controller});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
