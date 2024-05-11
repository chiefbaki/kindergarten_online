import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

class ColoredContainer extends StatelessWidget {
  final Widget child;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? padding, margin;
  const ColoredContainer(
      {super.key,
      required this.child,
      this.padding,
      this.margin,
      this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: AppColors.navyBlue, borderRadius: BorderRadius.circular(20.0)),
      child: child,
    );
  }
}
