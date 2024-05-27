import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';

class TextFieldDrop extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isReadOnly;

  const TextFieldDrop(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isReadOnly = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: isReadOnly,
      controller: controller,
      style:
          context.textTheme.displaySmall!.copyWith(color: AppColors.lightGrey),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Image.asset(
          Imgs.dropDown,
          width: 16,
          height: 8,
        ),
        hintStyle: context.textTheme.displaySmall!
            .copyWith(color: AppColors.lightGrey),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      ),
    );
  }
}
