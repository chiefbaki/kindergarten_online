import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class ProfileTextBtn extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const ProfileTextBtn(
      {super.key,
      
      required this.onPressed,
      required this.text});

  

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        child: Text(
          text,
          style: context.textTheme.displaySmall!.copyWith(color: AppColors.white),
        ));
  }
}
