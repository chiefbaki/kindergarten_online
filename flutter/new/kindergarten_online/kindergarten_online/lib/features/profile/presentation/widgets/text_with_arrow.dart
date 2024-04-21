import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';

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
              Images.iconRight,
              width: 15,
            ))
      ],
    );
  }
}
