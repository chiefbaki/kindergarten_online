import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/bag_item.dart';
import 'package:eco_shop/features/widgets/custom_alert_dialog.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

bool isButtonActive = false;
void checkPassLogin(void Function(void Function() fn) state,
    String controllerOne, String controllerTwo) {
  state(() {
    isButtonActive = (controllerOne.isNotEmpty && controllerOne.length >= 8) &&
        controllerTwo.isNotEmpty;
  });
}

bool switcher = false;
void checkPassRegister(void Function(void Function() fn) state,
    String controllerOne, String controllerTwo) {
  state(() {
    switcher = controllerOne == controllerTwo &&
        controllerOne.length >= 8 &&
        controllerTwo.length >= 8;
  });
}

void updateCategoryByIndex(
    {required String productName,
    required void Function(void Function() fn) state,
    required List<String> choiceData,
    required int selectedIndex}) {
  Map<String, String> productCategoryMap = {
    "яблоко": "Fruits",
    "груша": "Fruits",
    "клубника": "Fruits",
    "манго": "Fruits",
    "апельсины": "Fruits",
    "вишня": "Fruits",
    "изюм": "Dried_fruits",
    "помидоры": "Vegetables",
    "огурцы": "Vegetables",
    "лук": "Vegetables",
    "морковь": "Vegetables",
    "перец": "Vegetables",
    "молоко": "Milk_products",
    "йогурт": "Milk_products",
    "кофе": "Tea_Coffee",
    "чай": "Tea_Coffee",
    "укроп": "Greenery",
    "петрушка": "Tea_Coffee",
  };

  productCategoryMap.forEach((key, value) {
    if (productName.toLowerCase().contains(key)) {
      String category = value;
      state(() {
        selectedIndex = choiceData.indexOf(category);
      });
    }
  });
}

Future<dynamic> showCustomDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          widget: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Text(
                "Дата и время 07.07.2023 12:46",
                style: AppFonts.s16w400.copyWith(color: AppColors.ligthGrey),
              ),
            ],
          ),
          title: "Заказ №343565657 оформлен",
          btn: CustomBtn(
            onPressed: () {
              context.router.replace(ProductsRoute());
            },
            title: "Перейти в магазин",
          ),
        );
      });
}

Future<dynamic> orderBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      context: context,
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  Images.rectangle,
                  width: 50,
                  height: 4,
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView(
                    children: const [
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
                      height: 75,
                    ),
                    CustomBtn(
                        onPressed: () {
                          context.router.push(const OrderRoute());
                        },
                        title: "Оформить заказ")
                  ],
                )
              ],
            ),
          ),
        );
      });
}

Future<dynamic> showBagDialog(BuildContext context) {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Builder(builder: (context) {
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
      });
}
