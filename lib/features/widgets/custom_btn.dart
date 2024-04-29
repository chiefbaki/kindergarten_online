import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class CustomBtn extends StatelessWidget {
  final Function()? onPressed;

  final String name;
  const CustomBtn({
    super.key,
    required this.onPressed,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
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
                ? Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: AppColors.white)
                : Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: AppColors.white),
          )),
    );
  }
}
