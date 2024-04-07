import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/controller_listeners.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:flutter/material.dart';

class CustomFloatBtn extends StatefulWidget {
  final String sum;
  const CustomFloatBtn({super.key, required this.sum});

  @override
  State<CustomFloatBtn> createState() => _CustomFloatBtnState();
}

class _CustomFloatBtnState extends State<CustomFloatBtn> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return SizedBox(
          width: 182,
          height: 48,
          child: ElevatedButton(
              onPressed: () {
                orderBottomSheet(context);
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
              )));
    });
  }
}
