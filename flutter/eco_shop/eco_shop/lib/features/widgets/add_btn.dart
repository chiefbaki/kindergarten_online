import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:flutter/material.dart';

class AddBtn extends StatelessWidget {
  final Function() onPressed;
  const AddBtn({
    super.key,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 158,
        height: 32,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.green,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(12))),
            child: const Text(
              "Добавить",
              style: AppFonts.s16w500,
            )),
      );
  }
}
