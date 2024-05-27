import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';

class TextWithArrow extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  final Color? color;
  const TextWithArrow(
      {super.key,
      required this.name,
      required this.onPressed,
      this.color = AppColors.white});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          style: color == null
              ? context.textTheme.titleSmall!.copyWith(color: color)
              : context.textTheme.displaySmall!.copyWith(color: color),
        ),
        const Spacer(),
        IconButton(
            onPressed: onPressed,
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            icon: Image.asset(
              Imgs.iconRight,
              width: 15,
            ))
      ],
    );
  }
}
