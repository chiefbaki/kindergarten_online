import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/back_btn.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

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
            ? context.textTheme.titleLarge!.copyWith(color: AppColors.black)
            : context.textTheme.titleMedium!.copyWith(color: AppColors.black),
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
