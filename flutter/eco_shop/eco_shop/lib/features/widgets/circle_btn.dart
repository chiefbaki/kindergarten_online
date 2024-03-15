import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CircleBtn extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  const CircleBtn({
    super.key,
    required this.onTap,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 16,
        backgroundColor: AppColors.green,
        child: Icon(
          icon,
          color: AppColors.white,
        ),
      ),
    );
  }
}
