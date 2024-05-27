import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class PhoneTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  final bool isReadOnly;
  const PhoneTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isReadOnly = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: isReadOnly,
      controller: controller,
      style: context.textTheme.displaySmall!.copyWith(color: AppColors.grey),
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        hintText: hintText,
        hintStyle: context.textTheme.displaySmall!
            .copyWith(color: AppColors.lightGrey),
      ),
    );
  }
}
