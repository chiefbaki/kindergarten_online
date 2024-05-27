import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class ServicesBtn extends StatelessWidget {
  final String name;
  final Color color;
  final VoidCallback onPressed;
  const ServicesBtn(
      {super.key,
      required this.name,
      required this.onPressed,
      this.color = AppColors.blue});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            elevation: 0,
            minimumSize: const Size(165.0, 45.0),
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Text(
          name,
          style:
              context.textTheme.displaySmall!.copyWith(color: AppColors.white),
        ));
  }
}
