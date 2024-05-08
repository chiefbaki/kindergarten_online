import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/extensions/extensions.dart';
import 'package:kindergarten_online/features/widgets/cached_image.dart';
import 'package:kindergarten_online/features/widgets/custom_appbar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class NewsDetailsPage extends StatelessWidget {
  final String? date;
  final String? title;
  final String? content;
  final String? img;
  const NewsDetailsPage(
      {super.key, this.date, this.title, this.content, this.img});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(textStyle: textStyle, title: S.of(context).newsline),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                CachedImage(
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 200.h,
                  url: img ?? "",
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        date.convertDateTime(),
                        style: textStyle.displayMedium!
                            .copyWith(color: AppColors.lightGrey),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        title ?? "",
                        style: textStyle.titleLarge!
                            .copyWith(color: AppColors.black),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        content ?? "",
                        style: textStyle.displayMedium!
                            .copyWith(color: AppColors.black),
                      ),
                      Text(
                        content ?? "",
                        style: textStyle.displayMedium!
                            .copyWith(color: AppColors.black),
                      ),
                      Text(
                        content ?? "",
                        style: textStyle.displayMedium!
                            .copyWith(color: AppColors.black),
                      ),
                      Text(
                        content ?? "",
                        style: textStyle.displayMedium!
                            .copyWith(color: AppColors.black),
                      ),
                      Text(
                        content ?? "",
                        style: textStyle.displayMedium!
                            .copyWith(color: AppColors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
