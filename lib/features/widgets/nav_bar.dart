import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';

class NavBar extends StatelessWidget {
  final String text;

  const NavBar({super.key, required this.textStyle, required this.text});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            text,
            style:
                text.length > 18 ? textStyle.titleMedium : textStyle.titleLarge,
          ),
        ),
        Image.asset(
          Imgs.line,
          width: 84.w,
          color: AppColors.black,
        ),
      ],
    );
  }
}
