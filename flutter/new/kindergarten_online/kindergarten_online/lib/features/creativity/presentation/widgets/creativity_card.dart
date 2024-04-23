import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/colored_container.dart';

class CreativityCard extends StatelessWidget {
  const CreativityCard({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Imgs.newsAva,
            width: 350,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Криницисын Станислав",
            style: textStyle.displayMedium!.copyWith(color: AppColors.white),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "2023-02-09",
            style: textStyle.displaySmall!.copyWith(color: AppColors.lightGrey),
          )
        ],
      ),
    ));
  }
}
