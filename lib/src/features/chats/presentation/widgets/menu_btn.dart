import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

class MenuBtn extends StatelessWidget {
  final void Function() onPressed;
  const MenuBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.more_horiz,
          color: AppColors.black,
        ));
  }
}
