import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:flutter/material.dart';

class SignInField extends StatelessWidget {
  final String hintText;

  final TextEditingController controller;

  const SignInField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: 320,
      child: TextFormField( 
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter $hintText";
          }
        },
        style: AppFonts.s16w500,
        cursorColor: AppColors.black,
        controller: controller,
        decoration: InputDecoration(
            fillColor: AppColors.textFieldColor,
            filled: true,
            hintText: hintText,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            hintStyle: AppFonts.s16w500.copyWith(color: AppColors.labelColor),
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
