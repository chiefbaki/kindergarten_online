import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';

class TextWithArrow extends StatelessWidget {
  final String name;
  final Function() onPressed;
  const TextWithArrow({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          style: context.textTheme.titleSmall!.copyWith(color: AppColors.white),
        ),
        const Spacer(),
        IconButton(
            onPressed: onPressed,
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            icon: Image.asset(
              Imgs.iconRight,
              width: 15.w,
            ))
      ],
    );
  }
}
