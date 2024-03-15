import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/circle_btn.dart';
import 'package:eco_shop/features/widgets/trash_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BagItem extends StatelessWidget {
  const BagItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 94,
      decoration: BoxDecoration(
        color: AppColors.textFieldColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Stack(
              children: [
                Image.asset(
                  Images.fruit,
                  width: 98,
                  height: 86,
                ),
                const Positioned(
                  bottom: 0,
                  child: TrashBtn(),
                )
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Драконий фрукт",
                  style: AppFonts.s14w500,
                ),
                Text(
                  "Цена 340 с за шт",
                  style:
                      AppFonts.s12w500.copyWith(color: AppColors.articleColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "340 с",
                      style: AppFonts.s24w700.copyWith(color: AppColors.green),
                    ),
                    const SizedBox(
                      width: 99,
                    ),
                    CircleBtn(onTap: () {}, icon: Icons.remove),
                    const SizedBox(
                      width: 20.5,
                    ),
                    const Text(
                      "1",
                      style: AppFonts.s18w500,
                    ),
                    const SizedBox(
                      width: 20.5,
                    ),
                    CircleBtn(onTap: () {}, icon: Icons.add),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

