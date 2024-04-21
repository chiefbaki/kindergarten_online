import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        Images.newsAva,
      ),
      title: Text(
        'Тематическая неделя “Защитники отечества!"',
        textAlign: TextAlign.start,
        style: textStyle.displayMedium!.copyWith(color: AppColors.white),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "В средней группе “Зайчики” идет...",
              style: textStyle.titleSmall!.copyWith(color: AppColors.white),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "07.02.2023 – 13:27",
              style:
                  textStyle.displaySmall!.copyWith(color: AppColors.lightGrey),
            )
          ],
        ),
      ),
    );
  }
}
