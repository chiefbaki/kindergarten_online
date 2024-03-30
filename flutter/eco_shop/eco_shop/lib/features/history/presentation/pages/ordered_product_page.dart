import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/arrow_btn.dart';
import 'package:eco_shop/features/widgets/ordered_list_tile.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderedProductPage extends StatelessWidget {
  const OrderedProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Row(
                  children: [
                    ArrowBtn(
                      onPressed: () {
                        context.router.maybePop(const HistoryRoute());
                      },
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Text(
                      "Заказ №345674",
                      style:
                          AppFonts.s18w500.copyWith(color: AppColors.fontColor),
                    )
                  ],
                ),
              ),
              Container(
                height: 230,
                width: double.infinity,
                decoration: const BoxDecoration(color: AppColors.green),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Image.asset(
                      Images.check,
                      width: 74,
                      height: 74,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Оформлен 07.07.2023 12:46",
                      style: AppFonts.s16w600.copyWith(color: AppColors.white),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "396 c",
                      style: AppFonts.s32w700.copyWith(color: AppColors.white),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Доставка 150 с",
                      style: AppFonts.s16w600.copyWith(color: AppColors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const OrderedListTile(
                img: Images.smallApple,
                title: "Яблоко золотая радуга",
                subtitle: "Цена 56 с за шт",
                price: "56",
                count: "1 шт",
              ),
              const OrderedListTile(
                img: Images.smallApple,
                title: "Яблоко золотая радуга",
                subtitle: "Цена 56 с за шт",
                price: "56",
                count: "1 шт",
              )
            ],
          ),
        ),
      ),
    );
  }
}
