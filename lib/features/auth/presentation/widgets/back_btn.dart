import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class BackBtn extends StatelessWidget {
  final Function() onPressed;
  const BackBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_back,
          color: AppColors.black,
        ));
  }
}
