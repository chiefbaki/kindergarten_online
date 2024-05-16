import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/colored_container.dart';

const double _paddingUnit = 5;

class CEventWidget extends StatelessWidget {
  const CEventWidget({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
        padding: const EdgeInsets.fromLTRB(_paddingUnit * 3, _paddingUnit * 3,
            _paddingUnit * 3, _paddingUnit * 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "07:00",
                  style:
                      textStyle.displayMedium!.copyWith(color: AppColors.white),
                ),
                Text(
                  "08:00",
                  style: textStyle.titleSmall!.copyWith(color: AppColors.white),
                ),
              ],
            ),
            Gap(_paddingUnit * 13.w),
            Text(
              "Урок рисования",
              style: textStyle.displayMedium!.copyWith(color: AppColors.white),
            )
          ],
        ));
  }
}
