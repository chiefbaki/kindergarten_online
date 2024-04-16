import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class CustomFloatBtn extends StatelessWidget {
  final Widget icon;
  final bool isToSwitch;
  const CustomFloatBtn(
      {super.key, this.icon = const Icon(Icons.abc), required this.isToSwitch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 76),
      child: ElevatedButton(
          onPressed: isToSwitch
              ? () {
                  context.router.push(const MenuRoute());
                }
              : () {
                  context.router.maybePop();
                },
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blue,
              padding: const EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: icon),
    );
  }
}
