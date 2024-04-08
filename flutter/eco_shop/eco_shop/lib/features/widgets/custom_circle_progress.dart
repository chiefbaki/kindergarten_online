import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircleProgress extends StatelessWidget {
  const CustomCircleProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: AppColors.green,
    );
  }
}
