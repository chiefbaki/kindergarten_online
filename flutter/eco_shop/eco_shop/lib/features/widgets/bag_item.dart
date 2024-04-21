import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/circle_btn.dart';
import 'package:eco_shop/features/widgets/trash_btn.dart';
import 'package:flutter/material.dart';

class BagItem extends StatelessWidget {
  final String title;
  final int price;
  final int quantity;
  final String imagePaths; // isnt available now
  const BagItem({
    super.key,
    required this.title,
    required this.price,
    required this.quantity,
    required this.imagePaths,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
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
              SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppFonts.s14w500,
                    ),
                    Text(
                      "Цена $price с за шт",
                      style: AppFonts.s12w500
                          .copyWith(color: AppColors.articleColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "$price с",
                          style:
                              AppFonts.s24w700.copyWith(color: AppColors.green),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        CircleBtn(onTap: () {}, icon: Icons.remove),
                        const SizedBox(
                          width: 25.5,
                        ),
                        Text(
                          quantity.toString(),
                          style: AppFonts.s18w500,
                        ),
                        const SizedBox(
                          width: 25.5,
                        ),
                        CircleBtn(onTap: () {}, icon: Icons.add),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
