import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/services_btn.dart';
import 'package:kindergarten_online/generated/l10n.dart';

const double _paddingUnit = 5;

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(vertical: _paddingUnit * 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: REdgeInsets.symmetric(horizontal: _paddingUnit * 3),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ServicesBtn(
                        name: S.of(context).newOnesFirst,
                        onPressed: () {},
                      ),
                      ServicesBtn(
                        name: S.of(context).oldOnesFirst,
                        onPressed: () {},
                        color: AppColors.navyBlue,
                      ),
                    ],
                  ),
                  Padding(
                    padding: REdgeInsets.symmetric(vertical: 260),
                    child: Column(
                      children: [
                        Text(
                          S.of(context).thisSectionIsStillEmpty,
                          style: context.textTheme.displayLarge!
                              .copyWith(color: AppColors.black),
                        ),
                        10.verticalSpace,
                        Text(
                          S.of(context).thisWindowWillDisplay,
                          textAlign: TextAlign.center,
                          style: context.textTheme.titleSmall,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
