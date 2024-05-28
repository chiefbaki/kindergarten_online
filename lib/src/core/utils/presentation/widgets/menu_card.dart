import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class MenuCard extends StatelessWidget {
  final String img;
  final String title;
  final dynamic route;
  const MenuCard(
      {super.key, required this.img, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.replace(route);
      },
      overlayColor: WidgetStatePropertyAll(AppColors.blue.withOpacity(0.1)),
      customBorder: const CircleBorder(side: BorderSide(strokeAlign: 2)),
      child: Center(
        child: SizedBox(
          width: 80.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                img,
                width: 30,
              ),
              Flexible(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: context.textTheme.displaySmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
