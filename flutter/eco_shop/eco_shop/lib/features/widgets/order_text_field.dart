import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:flutter/material.dart';

class OrderTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  const OrderTextField(
      {super.key, required this.labelText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: AppFonts.s16w400.copyWith(color: AppColors.fontColor),
      cursorColor: AppColors.labelColor,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppFonts.s16w400.copyWith(color: AppColors.ligthGrey),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.ligthGrey, width: 0.5)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.labelColor))),
    );
  }
}
