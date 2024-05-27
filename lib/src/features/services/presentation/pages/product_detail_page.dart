import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/src/features/services/domain/entities/product_entity.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_appbar.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_btn.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';

const double _paddingUnit = 5;

@RoutePage()
class ProductDetailPage extends StatelessWidget {
  final ProductResultEntity results;
  const ProductDetailPage({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(title: S.of(context).catalogOfProductAndServices),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        child: Center(
          child: Padding(
            padding: REdgeInsets.symmetric(
                vertical: _paddingUnit * 5, horizontal: _paddingUnit * 5),
            child: SizedBox(
              height: context.height * 0.77,
              child: Column(
                children: [
                  Container(
                    height: 230.h,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.network(
                      results.images!.first.img ?? "",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: _paddingUnit * 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        25.verticalSpace,
                        Text(
                          results.name ?? "",
                          style: context.textTheme.titleMedium!
                              .copyWith(color: AppColors.black),
                        ),
                        10.verticalSpace,
                        Text(
                          results.description ?? "",
                          style: context.textTheme.titleSmall,
                        ),
                        10.verticalSpace,
                        const CustomDivider(),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.of(context).address,
                              style: context.textTheme.titleSmall,
                            ),
                            Text(
                              results.address ?? "",
                              style: context.textTheme.titleSmall!
                                  .copyWith(color: AppColors.navyBlue),
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        const CustomDivider(),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.of(context).site,
                              style: context.textTheme.titleSmall,
                            ),
                            Text(
                              results.url!.length < 15 ? results.url ?? "" : "",
                              style: context.textTheme.titleSmall!
                                  .copyWith(color: AppColors.navyBlue),
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        const CustomDivider(),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.of(context).timeOfWork,
                              style: context.textTheme.titleSmall,
                            ),
                            Text(
                              "С 8.00 до 10.00",
                              style: context.textTheme.titleSmall!
                                  .copyWith(color: AppColors.navyBlue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  50.verticalSpace,
                  CustomBtn(onPressed: () {}, name: S.of(context).buy),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
