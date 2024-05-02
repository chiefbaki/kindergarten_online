import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/services/domain/entities/product_entity.dart';
import 'package:kindergarten_online/features/widgets/custom_appbar.dart';
import 'package:kindergarten_online/features/widgets/custom_btn.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';

@RoutePage()
class ProductDetailPage extends StatelessWidget {
  final ProductResultEntity results;
  const ProductDetailPage({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
          textStyle: Theme.of(context).textTheme,
          title: "Каталог товаров и услуг"),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.77,
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
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          results.name ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: AppColors.black),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          results.description ?? "",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomDivider(),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Адрес",
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
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomDivider(),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Сайт",
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
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomDivider(),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Время работы",
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
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomBtn(onPressed: () {}, name: "Купить"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
