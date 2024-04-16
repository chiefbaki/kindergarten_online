import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class CustomBtn extends StatelessWidget {
  final Function() onPressed;
  final String name;
  const CustomBtn({
    super.key,
    required this.onPressed,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 237.w,
      height: 50.h,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blue,
              shadowColor: AppColors.black.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Text(
            name,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: AppColors.white),
          )),
    );
  }
}
