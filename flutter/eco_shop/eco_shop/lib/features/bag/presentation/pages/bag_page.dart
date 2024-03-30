import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/widgets/bag_item.dart';
import 'package:eco_shop/features/widgets/custom_alert_dialog.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    int tempVar = 100;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Очистить",
                        style: AppFonts.s18w500.copyWith(color: AppColors.red),
                      )),
                  const SizedBox(
                    width: 53,
                  ),
                  Text(
                    "Корзина",
                    style:
                        AppFonts.s18w500.copyWith(color: AppColors.fontColor),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    BagItem(),
                    BagItem(),
                    BagItem(),
                    BagItem(),
                    BagItem(),
                    BagItem(),
                    BagItem(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Сумма",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.articleColor),
                      ),
                      Text(
                        "396 с",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.fontColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Доставка",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.articleColor),
                      ),
                      Text(
                        "150 с",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.fontColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Итого",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.articleColor),
                      ),
                      Text(
                        "546 с",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.fontColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 156,
                  ),
                  CustomBtn(
                      onPressed: () {
                        tempVar < 300
                            ? context.router.push(const OrderRoute())
                            : showCustomDialog(context);
                      },
                      title: "Оформить заказ"),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> showCustomDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return CustomAlertDialog(
            title: "Заказ может быть при покупке свыше 300 с",
            btn: CustomBtn(
                onPressed: () {
                  Navigator.pop(context);
                },
                title: "Закрыть"),
            height: 400,
          );
        });
  }
}
