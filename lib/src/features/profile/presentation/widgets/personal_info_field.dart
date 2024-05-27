import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class PersonalInfoField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final bool isReadOnly;

  const PersonalInfoField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.textInputAction,
      this.isReadOnly = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      style:
          context.textTheme.displayMedium!.copyWith(color: AppColors.lightGrey),
      readOnly: isReadOnly,
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: REdgeInsets.symmetric(vertical: 12, horizontal: 15),
        hintStyle: context.textTheme.displayMedium!
            .copyWith(color: AppColors.lightGrey),
        hintText: hintText,
      ),
    );
  }
}
