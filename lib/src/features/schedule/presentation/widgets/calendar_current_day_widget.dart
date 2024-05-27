import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/colored_container.dart';

const double _paddingUnit = 5;

class CCurrentDayEvent extends StatelessWidget {
  const CCurrentDayEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
        margin: REdgeInsets.symmetric(vertical: _paddingUnit * 2),
        padding: REdgeInsets.all(_paddingUnit * 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "wdwdwd",
              style: context.textTheme.displayMedium!
                  .copyWith(color: AppColors.white),
            ),
            Text(
              "3 занятия",
              style: context.textTheme.displayMedium!
                  .copyWith(color: AppColors.white),
            ),
          ],
        ));
  }
}
