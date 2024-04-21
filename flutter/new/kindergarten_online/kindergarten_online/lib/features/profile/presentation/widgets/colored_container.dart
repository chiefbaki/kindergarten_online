import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class ColoredContainer extends StatelessWidget {
  final Widget child;
  const ColoredContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.navyBlue, borderRadius: BorderRadius.circular(20.0)),
      child: child,
    );
  }
}
