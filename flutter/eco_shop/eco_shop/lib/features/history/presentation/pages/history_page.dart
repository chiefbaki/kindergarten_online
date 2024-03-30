import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "История заказов",
                    style:
                        AppFonts.s18w500.copyWith(color: AppColors.fontColor),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Сегодня",
                  style:
                      AppFonts.s14w500.copyWith(color: AppColors.articleColor),
                ),
                const SizedBox(
                  height: 12,
                ),
                const CustomListTile(
                  orderNum: "Заказа №345674",
                  price: "340",
                  date: "12:46",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
