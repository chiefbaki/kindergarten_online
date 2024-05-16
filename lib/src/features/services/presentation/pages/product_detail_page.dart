import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
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
    final height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      appBar: CustomAppBar(
          textStyle: Theme.of(context).textTheme,
          title: S.of(context).catalogOfProductAndServices),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: _paddingUnit * 5, horizontal: _paddingUnit * 5),
            child: SizedBox(
              height: height * 0.77,
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
                        Gap(
                          _paddingUnit * 5.h,
                        ),
                        Text(
                          results.name ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: AppColors.black),
                        ),
                        Gap(
                          _paddingUnit * 2.h,
                        ),
                        Text(
                          results.description ?? "",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Gap(
                          _paddingUnit * 2.h,
                        ),
                        const CustomDivider(),
                        Gap(
                          _paddingUnit * 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.of(context).address,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Text(
                              results.address ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: AppColors.navyBlue),
                            ),
                          ],
                        ),
                        Gap(
                          _paddingUnit * 2.h,
                        ),
                        const CustomDivider(),
                        Gap(
                          _paddingUnit * 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.of(context).site,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Text(
                              results.url!.length < 15 ? results.url ?? "" : "",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: AppColors.navyBlue),
                            ),
                          ],
                        ),
                        Gap(
                          _paddingUnit * 2.h,
                        ),
                        const CustomDivider(),
                        Gap(
                          _paddingUnit * 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.of(context).timeOfWork,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Text(
                              "С 8.00 до 10.00",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: AppColors.navyBlue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(
                    _paddingUnit * 10.h,
                  ),
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
