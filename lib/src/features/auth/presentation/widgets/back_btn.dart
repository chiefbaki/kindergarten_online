import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

class BackBtn extends StatelessWidget {
  final VoidCallback onPressed;
  const BackBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(padding: EdgeInsets.zero),
        icon: const Icon(
          Icons.arrow_back,
          color: AppColors.black,
        ));
  }
}
