import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/widgets/services_btn.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ServicesBtn(
                        textStyle: textStyle,
                        name: S.of(context).newOnesFirst,
                        onPressed: () {},
                      ),
                      ServicesBtn(
                        textStyle: textStyle,
                        name: S.of(context).oldOnesFirst,
                        onPressed: () {},
                        color: AppColors.navyBlue,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 260),
                    child: Column(
                      children: [
                        Text(
                          S.of(context).thisSectionIsStillEmpty,
                          style: textStyle.displayLarge!
                              .copyWith(color: AppColors.black),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          S.of(context).thisWindowWillDisplay,
                          textAlign: TextAlign.center,
                          style: textStyle.titleSmall,
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
