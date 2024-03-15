import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/bag_item.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomFloatBtn extends StatefulWidget {
  final String sum;
  const CustomFloatBtn({super.key, required this.sum});

  @override
  State<CustomFloatBtn> createState() => _CustomFloatBtnState();
}

class _CustomFloatBtnState extends State<CustomFloatBtn> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return SizedBox(
        width: 182,
        height: 48,
        child: isVisible
            ? ElevatedButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                  showModalBottomSheet(
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.72,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
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
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom,
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  child: ListView(
                                    children: const [
                                      BagItem(),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      BagItem(),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      BagItem(),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      BagItem(),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      BagItem(),
                                      const SizedBox(
                                        height: 12,
                                      ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Сумма",
                                          style: AppFonts.s16w500.copyWith(
                                              color: AppColors.articleColor),
                                        ),
                                        Text(
                                          "396 с",
                                          style: AppFonts.s16w500.copyWith(
                                              color: AppColors.fontColor),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Доставка",
                                          style: AppFonts.s16w500.copyWith(
                                              color: AppColors.articleColor),
                                        ),
                                        Text(
                                          "150 с",
                                          style: AppFonts.s16w500.copyWith(
                                              color: AppColors.fontColor),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Итого",
                                          style: AppFonts.s16w500.copyWith(
                                              color: AppColors.articleColor),
                                        ),
                                        Text(
                                          "546 с",
                                          style: AppFonts.s16w500.copyWith(
                                              color: AppColors.fontColor),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 86,
                                    ),
                                    CustomBtn(
                                        onPressed: () {},
                                        title: "Оформить заказ")
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }).then((value) {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: Row(
                  children: [
                    Image.asset(Images.bag),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Корзина ${widget.sum} c",
                      style: AppFonts.s16w500,
                    )
                  ],
                ))
            : const SizedBox(),
      );
    });
  }
}
