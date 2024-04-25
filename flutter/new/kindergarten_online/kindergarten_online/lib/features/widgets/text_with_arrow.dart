import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';

class TextWithArrow extends StatelessWidget {
  final String name;
  final Function() onPressed;
  final Color? color;
  const TextWithArrow(
      {super.key,
      required this.textStyle,
      required this.name,
      required this.onPressed,
      this.color = AppColors.white});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          style: color == null
              ? textStyle.titleSmall!.copyWith(color: color)
              : textStyle.displaySmall!.copyWith(color: color),
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
