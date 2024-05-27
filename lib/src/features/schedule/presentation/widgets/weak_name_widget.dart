import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class WeakName extends StatelessWidget {
  const WeakName({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      "ПН",
      style: context.textTheme.titleSmall!.copyWith(color: AppColors.lightGrey),
    );
  }
}
