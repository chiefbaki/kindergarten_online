import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class FavoriteBtn extends StatelessWidget {
  final Function() onPressed;
  const FavoriteBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.favorite,
          color: AppColors.blue,
          size: 24,
        ));
  }
}
