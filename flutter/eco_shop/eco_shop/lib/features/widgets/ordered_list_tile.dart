import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:flutter/material.dart';

class OrderedListTile extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final String count;
  final String img;
  const OrderedListTile({
    super.key,
    required this.img,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.textFieldColor),
        child: ListTile(
          leading: Image.asset(img),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppFonts.s16w500.copyWith(color: AppColors.fontColor),
              ),
              RichText(
                  text: TextSpan(
                      text: price,
                      style: AppFonts.s20w700.copyWith(color: AppColors.green),
                      children: [
                    TextSpan(
                        text: "c",
                        style:
                            AppFonts.s14w700.copyWith(color: AppColors.green))
                  ]))
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subtitle,
                  style: AppFonts.s12w500.copyWith(color: AppColors.labelColor),
                ),
                Text(
                  count,
                  style: AppFonts.s12w500.copyWith(color: AppColors.labelColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
