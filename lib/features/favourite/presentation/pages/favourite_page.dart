import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/widgets/custom_float_btn.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/features/widgets/services_btn.dart';

@RoutePage()
class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: "Избранные"),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ServicesBtn(
                            textStyle: textStyle,
                            name: "Сначала новые",
                            onPressed: () {},
                          ),
                          ServicesBtn(
                            textStyle: textStyle,
                            name: "Сначала старые",
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
                              "Раздел пока пуст",
                              style: textStyle.displayLarge!
                                  .copyWith(color: AppColors.black),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "В этом окне будут отображаться\nВаши избранные объявления.",
                              textAlign: TextAlign.center,
                              style: textStyle.titleSmall,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const CustomFloatBtn(isToSwitch: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
