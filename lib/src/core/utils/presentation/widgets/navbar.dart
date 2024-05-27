import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 15,
        centerTitle: false,
        title: Text(
          title,
          style: S.of(context).cameras.length > 18
              ? context.textTheme.titleMedium
              : context.textTheme.titleLarge,
        ),
        actions: [
          Image.asset(
            Imgs.line,
            width: 84.w,
            color: AppColors.black,
          ),
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
