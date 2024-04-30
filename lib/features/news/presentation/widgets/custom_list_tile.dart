import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/extensions/extensions.dart';
import 'package:kindergarten_online/features/news/domain/entities/news_entity.dart';

class CustomListTile extends StatelessWidget {
  final ResultsEntity entity;
  final String images;
  const CustomListTile(
      {super.key,
      required this.textStyle,
      required this.entity,
      required this.images});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    final String newImg = images.replaceAll("file:///", "http://84.54.12.206/");
    print(newImg);
    return InkWell(
        onTap: () {
          context.router.push(NewsDetailsRoute(
            date: entity.timestamp ?? "",
            title: entity.title ?? "",
            content: entity.content ?? "",
          ));
        },
        child: ListTile(
            leading: Image.network(newImg),
            title: Text(
              entity.title ?? "",
              textAlign: TextAlign.start,
              style: textStyle.displayMedium!.copyWith(color: AppColors.white),
            ),
            subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entity.content ?? "error",
                      style: textStyle.titleSmall!
                          .copyWith(color: AppColors.white),
                      softWrap: true,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      entity.timestamp.convertDateTime(),
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.lightGrey),
                    )
                  ],
                ))));
  }
}
