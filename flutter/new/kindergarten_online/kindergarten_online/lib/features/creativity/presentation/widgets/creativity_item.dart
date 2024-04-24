import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/colored_container.dart';
import 'package:kindergarten_online/features/widgets/cached_image.dart';

class CreativityItem extends StatelessWidget {
  final String name;
  final String image;
  const CreativityItem(
      {super.key,
      required this.textStyle,
      required this.name,
      required this.image});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CachedImage(img: image),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            name,
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
