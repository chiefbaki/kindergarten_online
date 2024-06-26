import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback? onPressed;

  final String name;
  const CustomBtn({
    super.key,
    required this.onPressed,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(237, 50),
            padding:
                const EdgeInsets.symmetric(vertical: 16.5, horizontal: 73.5),
            backgroundColor: AppColors.blue,
            disabledBackgroundColor: AppColors.lightBlue,
            shadowColor: AppColors.black.withOpacity(0.8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(
          name,
          style: name.length < 14
              ? context.textTheme.displayMedium!
                  .copyWith(color: AppColors.white)
              : context.textTheme.displaySmall!
                  .copyWith(color: AppColors.white),
        ));
  }
}
