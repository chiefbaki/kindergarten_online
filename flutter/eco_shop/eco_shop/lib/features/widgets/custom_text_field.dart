import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;
  const CustomTextField(
      {super.key, required this.controller, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: controller,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
            fillColor: AppColors.textFieldColor,
            filled: true,
            hintText: "Быстрый поиск",
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            hintStyle: AppFonts.s16w500.copyWith(color: AppColors.labelColor),
            prefixIcon: Image.asset(
              Images.search01,
              width: 24,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: AppColors.textFieldColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: AppColors.textFieldColor))),
      ),
    );
  }
}
