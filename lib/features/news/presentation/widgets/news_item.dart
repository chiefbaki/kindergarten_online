import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/news/presentation/widgets/custom_list_tile.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      itemCount: 10,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
              color: AppColors.navyBlue,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomListTile(textStyle: textStyle),
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 10.h,
      ),
    ));
  }
}
