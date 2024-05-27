import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class CustomTextBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final String name;
  final Color color;
  const CustomTextBtn(
      {super.key,
      required this.onPressed,
      required this.name,
      this.color = AppColors.darkBlue});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          name,
          style: context.textTheme.displaySmall!.copyWith(color: color),
        ));
  }
}
