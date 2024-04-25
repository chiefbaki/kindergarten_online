import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/back_btn.dart';

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
      centerTitle: false,
      title: Text(
        title,
        style: textStyle.titleLarge!.copyWith(color: AppColors.black),
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
