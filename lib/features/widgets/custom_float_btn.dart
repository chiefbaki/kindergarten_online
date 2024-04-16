import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class CustomFloatBtn extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  const CustomFloatBtn(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Icon(
            icon,
            color: AppColors.lightBlue,
          ),
        ));
  }
}
