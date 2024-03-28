import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class PinCodeField extends StatelessWidget {
  final TextEditingController controller;
  const PinCodeField({super.key, required this.controller});

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
              // FilteringTextInputFormatter.
            ],
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.textFieldColor,
                errorBorder:OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.red),
                    borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.ligthGrey),
                    borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.labelColor),
                    borderRadius: BorderRadius.circular(12))),
          )),
    );
  }
}