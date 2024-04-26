import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class PinCodeWidget extends StatelessWidget {
  final TextEditingController controller;
  const PinCodeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
          width: 56,
          height: 90,
          child: TextFormField(
              controller: controller,
              cursorColor: Colors.black,
              cursorHeight: 10,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Field is empty";
                } else {
                  return null;
                }
              },
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                  debugPrint(value.length.toString());
                }
              },
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.red),
                    borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.lightGrey)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors.lightGrey),
                ),
              ))),
    );
  }
}
