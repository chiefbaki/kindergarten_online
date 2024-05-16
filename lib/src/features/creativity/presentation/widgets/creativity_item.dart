import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/colored_container.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/creativity_cached_image.dart';

const _paddingUnit = 10;

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
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CreativityCachedImage(img: image),
            ),
            Gap(
              _paddingUnit.h,
            ),
            Text(
              name,
              style: textStyle.displayMedium!.copyWith(color: AppColors.white),
            ),
            Gap(
              _paddingUnit.h,
            ),
            Text(
              "2023-02-09",
              style: textStyle.displaySmall!.copyWith(color: AppColors.lightGrey),
            )
          ],
        ));
  }
}
