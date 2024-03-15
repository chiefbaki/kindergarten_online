import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/circle_btn.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          color: AppColors.ligthGrey,
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Images.apple),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Яблоко красная радуга сладкая",
              style: AppFonts.s14w500.copyWith(color: AppColors.fontColor),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "56 c",
              style: AppFonts.s20w700.copyWith(color: AppColors.green),
            ),
            const SizedBox(
              height: 16,
            ),
            isVisible
                ? SizedBox(
                    width: 158,
                    height: 32,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.green,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text(
                          "Добавить",
                          style: AppFonts.s16w500,
                        )),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleBtn(
                        onTap: () {},
                        icon: Icons.remove,
                      ),
                      const Text(
                        "1",
                        style: AppFonts.s18w500,
                      ),
                      CircleBtn(
                        onTap: () {},
                        icon: Icons.add,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
