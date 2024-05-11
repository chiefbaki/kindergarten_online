import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';

class TextWithArrow extends StatelessWidget {
  final String name;
  final Function() onPressed;
  const TextWithArrow(
      {super.key,
      required this.textStyle,
      required this.name,
      required this.onPressed});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          style: textStyle.titleSmall!.copyWith(color: AppColors.white),
          
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
