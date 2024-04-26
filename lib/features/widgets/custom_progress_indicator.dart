import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Platform.isIOS
            ? const CircularProgressIndicator.adaptive()
            : const CircularProgressIndicator(
                backgroundColor: AppColors.lightBlue,
              ));
  }
}
