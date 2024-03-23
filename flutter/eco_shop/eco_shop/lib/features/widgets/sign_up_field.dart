import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:flutter/material.dart';

class SignUpField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final Function() onPressed;
  final TextEditingController controller;

  const SignUpField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.onPressed,
      this.obscureText = false});

  @override
  State<SignUpField> createState() => _SignUpFieldState();
}

class _SignUpFieldState extends State<SignUpField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: 320,
      child: TextField(
        cursorColor: AppColors.black,
        obscureText: widget.obscureText,
        style: AppFonts.s16w500,
        controller: widget.controller,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: widget.onPressed,
                icon: Icon(
                  widget.obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.fontColor,
                )),
            fillColor: AppColors.textFieldColor,
            filled: true,
            hintText: widget.hintText,
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
