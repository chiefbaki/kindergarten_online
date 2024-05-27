import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/extensions/extensions.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/cached_image.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_appbar.dart';
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
    return Scaffold(
      appBar: CustomAppBar(title: S.of(context).newsline),
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
                  padding: REdgeInsets.symmetric(horizontal: 16, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        date.convertDateTime(),
                        style: context.textTheme.displayMedium!
                            .copyWith(color: AppColors.lightGrey),
                      ),
                      10.verticalSpace,
                      Text(
                        title ?? "",
                        style: context.textTheme.titleLarge!
                            .copyWith(color: AppColors.black),
                        softWrap: true,
                      ),
                      20.verticalSpace,
                      Column(
                        children: List<Text>.generate(
                          5,
                          (index) => Text(
                            content ?? "",
                            style: context.textTheme.displayMedium!
                                .copyWith(color: AppColors.black),
                          ),
                        ),
                      )
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
