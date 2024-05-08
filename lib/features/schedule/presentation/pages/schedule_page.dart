import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

const double _paddingUnit = 5;

/// In development
@RoutePage()
class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return CustomScaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: _paddingUnit * 5),
            child: Column(
              children: [
                NavBar(textStyle: textStyle, text: S.of(context).shedule),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: _paddingUnit * 3, vertical: _paddingUnit * 5),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColors.navyBlue,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: _paddingUnit * 3,
                                  vertical: _paddingUnit * 4),
                              decoration: BoxDecoration(
                                  color: AppColors.darkBlue,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "29 января 2024 г.",
                                    style: textStyle.displayMedium!
                                        .copyWith(color: AppColors.white),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        Imgs.iconArrowLeft,
                                        color: AppColors.blue,
                                      ),
                                      Gap(_paddingUnit * 4.w),
                                      SvgPicture.asset(
                                        Imgs.iconArrowRightOne,
                                        color: AppColors.blue,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Column(
                                children: [
                                  Text(
                                    "ПН",
                                    style: textStyle.titleSmall!
                                        .copyWith(color: AppColors.lightGrey),
                                  ),
                                  Gap(_paddingUnit * 2.h),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "1",
                                      style: textStyle.titleSmall!
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "1",
                                      style: textStyle.titleSmall!
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "1",
                                      style: textStyle.titleSmall!
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "1",
                                      style: textStyle.titleSmall!
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "1",
                                      style: textStyle.titleSmall!
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
