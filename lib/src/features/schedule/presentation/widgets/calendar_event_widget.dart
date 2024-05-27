import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/colored_container.dart';

const double _paddingUnit = 5;

class CEventWidget extends StatelessWidget {
  const CEventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
        padding: REdgeInsets.fromLTRB(_paddingUnit * 3, _paddingUnit * 3,
            _paddingUnit * 3, _paddingUnit * 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "07:00",
                  style: context.textTheme.displayMedium!
                      .copyWith(color: AppColors.white),
                ),
                Text(
                  "08:00",
                  style: context.textTheme.titleSmall!
                      .copyWith(color: AppColors.white),
                ),
              ],
            ),
            45.horizontalSpace,
            Text(
              "Урок рисования",
              style: context.textTheme.displayMedium!
                  .copyWith(color: AppColors.white),
            )
          ],
        ));
  }
}
