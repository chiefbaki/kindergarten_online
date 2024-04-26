import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class SearchBtn extends StatelessWidget {
  final Function() onPressed;
  const SearchBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.search,
          color: AppColors.black,
          size: 25,
        ));
  }
}
