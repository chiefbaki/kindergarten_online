import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String orderNum;
  final String price;
  final String date; // потом поменять на DateTime
  const CustomListTile(
      {super.key,
      required this.orderNum,
      required this.price,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(const OrderedProductRoute());
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.textFieldColor),
        child: ListTile(
          leading: Image.asset(
            Images.historyBag,
            width: 43,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                orderNum,
                style: AppFonts.s16w500.copyWith(color: AppColors.fontColor),
              ),
              RichText(
                text: TextSpan(
                    text: price,
                    style: AppFonts.s20w700.copyWith(color: AppColors.green),
                    children: [
                      TextSpan(
                          text: " c",
                          style:
                              AppFonts.s14w500.copyWith(color: AppColors.green))
                    ]),
              )
            ],
          ),
          subtitle: Text(
            date,
            style: AppFonts.s14w400,
          ),
        ),
      ),
    );
  }
}
