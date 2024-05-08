import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

const double _paddingUnit = 5;

class ExitBtn extends StatelessWidget {
  final Function() onPressed;

  final String text;
  const ExitBtn(
      {super.key,
      required this.textStyle,
      required this.onPressed,
      required this.text});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.navyBlue,
            minimumSize: const Size(345, 56),
            padding: const EdgeInsets.symmetric(
                horizontal: _paddingUnit * 28, vertical: _paddingUnit * 4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          text,
          style: textStyle.titleSmall!.copyWith(color: AppColors.white),
        ));
  }
}
