import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

class PinCodeWidget extends StatelessWidget {
  final TextEditingController controller;
  const PinCodeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
          width: 56.w,
          height: 90.h,
          child: TextFormField(
              controller: controller,
              cursorColor: Colors.black,
              cursorHeight: 10,
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
                  errorBorder: _outlineBorder(AppColors.red),
                  enabledBorder: _outlineBorder(AppColors.lightGrey),
                  focusedBorder: _outlineBorder(AppColors.lightGrey)))),
    );
  }

  OutlineInputBorder _outlineBorder(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(12).r);
  }
}
