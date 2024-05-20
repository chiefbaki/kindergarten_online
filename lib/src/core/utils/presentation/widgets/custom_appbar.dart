import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/back_btn.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.textStyle, required this.title});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackBtn(
        onPressed: () {
          context.router.maybePop();
        },
      ),
      centerTitle: true,
      title: Text(
        title,
        style: title.length < 18
            ? textStyle.titleLarge!.copyWith(color: AppColors.black)
            : textStyle.titleMedium!.copyWith(color: AppColors.black),
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}