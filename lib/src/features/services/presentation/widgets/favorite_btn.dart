import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

const double _size = 24;

class FavoriteBtn extends StatelessWidget {
  final void Function() onPressed;
  final bool isSelected;
  const FavoriteBtn(
      {super.key, required this.onPressed, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.favorite,
          color: isSelected ? AppColors.blue : AppColors.white,
          size: _size,
        ));
  }
}
