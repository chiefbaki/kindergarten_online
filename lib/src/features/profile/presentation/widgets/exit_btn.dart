import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

const double _paddingUnit = 5;

class ExitBtn extends StatelessWidget {
  final Function() onPressed;

  final String text;
  const ExitBtn({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.navyBlue,
            minimumSize: const Size(345, 56),
            padding: REdgeInsets.symmetric(
                horizontal: _paddingUnit * 28, vertical: _paddingUnit * 4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          text,
          style: context.textTheme.titleSmall!.copyWith(color: AppColors.white),
        ));
  }
}
