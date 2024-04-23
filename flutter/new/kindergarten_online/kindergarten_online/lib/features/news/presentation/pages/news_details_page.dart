import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/extensions.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_appbar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class NewsDetailsPage extends StatelessWidget {
  final String? date;
  final String? title;
  final String? content;
  const NewsDetailsPage({
    super.key,
    this.date,
    this.title,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(textStyle: textStyle, title: S.of(context).newsline),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.78,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: Image.asset(
                      Imgs.newsAva,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 25
                    ),
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
