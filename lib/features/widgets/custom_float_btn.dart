import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/functions.dart';

class CustomFloatBtn extends StatelessWidget {
  final Widget icon;
  final bool isToSwitch;
  const CustomFloatBtn(
      {super.key, this.icon = const Icon(Icons.abc), required this.isToSwitch});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 76),
      child: ElevatedButton(
          onPressed: isToSwitch
              ? () {
                  customBottomSheet(context, textStyle);
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
