import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/colored_container.dart';

const double _paddingUnit = 5;

class CCurrentDayEvent extends StatelessWidget {
  const CCurrentDayEvent({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ColoredContainer(
        margin: const EdgeInsets.symmetric(vertical: _paddingUnit * 2),
        padding: const EdgeInsets.all(_paddingUnit * 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "wdwdwd",
              style: textStyle.displayMedium!.copyWith(color: AppColors.white),
            ),
            Text(
              "3 занятия",
              style: textStyle.displayMedium!.copyWith(color: AppColors.white),
            ),
          ],
        ));
  }
}
