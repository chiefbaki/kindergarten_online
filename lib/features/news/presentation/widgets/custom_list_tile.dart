import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/extensions/extensions.dart';
import 'package:kindergarten_online/features/news/domain/entities/news_entity.dart';
import 'package:kindergarten_online/features/widgets/cached_image.dart';

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
    return InkWell(
        onTap: () {
          _goToDetailsPage(context);
        },
        child: Container(
          constraints: const BoxConstraints(maxHeight: 114),
          child: ListTile(
              leading: CachedImage(
                fit: BoxFit.cover,
                url: images,
                width: 80,
                height: 120,
              ),
              title: Text(
                entity.title ?? "",
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.clip,
                style:
                    textStyle.displayMedium!.copyWith(color: AppColors.white),
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
                        overflow: TextOverflow.clip,
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
                  ))),
        ));
  }

  void _goToDetailsPage(BuildContext context) {
    context.router.push(NewsDetailsRoute(
        date: entity.timestamp ?? "",
        title: entity.title ?? "",
        content: entity.content ?? "",
        img: entity.images!.first.img));
  }
}
