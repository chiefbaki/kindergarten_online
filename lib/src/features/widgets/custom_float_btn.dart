import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/resources/functions.dart';

class CustomFloatBtn extends StatelessWidget {
  final Widget icon;
  final bool isToSwitch;
  final bool showButton;
  const CustomFloatBtn(
      {super.key,
      this.icon = const Icon(Icons.abc),
      required this.isToSwitch,
      required this.showButton});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return showButton
        ? ElevatedButton(
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
            child: icon)
        : const SizedBox.shrink();
  }
}
