import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/colored_container.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/creativity_cached_image.dart';

const double _paddingUnit = 10;

class CreativityItem extends StatelessWidget {
  final String name;
  final String image;
  const CreativityItem({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
        margin: REdgeInsets.only(bottom: _paddingUnit),
        padding: REdgeInsets.symmetric(
            horizontal: _paddingUnit * 3, vertical: _paddingUnit * 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CreativityCachedImage(img: image),
            ),
            _paddingUnit.verticalSpace,
            Text(
              name,
              style: context.textTheme.displayMedium!
                  .copyWith(color: AppColors.white),
            ),
            _paddingUnit.verticalSpace,
            Text(
              "2023-02-09",
              style: context.textTheme.displaySmall!
                  .copyWith(color: AppColors.lightGrey),
            )
          ],
        ));
  }
}
