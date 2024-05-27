import 'package:flutter/material.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/services/presentation/pages/favourite_page.dart';
import 'package:kindergarten_online/src/features/services/presentation/widgets/category_item.dart';

class ServicesTabs extends StatelessWidget {
  const ServicesTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: DefaultTabController(
          animationDuration: Durations.extralong2,
          length: 3,
          initialIndex: 1,
          child: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  child: Text(
                    S.of(context).popular,
                    style: context.textTheme.displayMedium!
                        .copyWith(color: AppColors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    S.of(context).catalog,
                    style: context.textTheme.displayMedium!
                        .copyWith(color: AppColors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    S.of(context).favourite,
                    style: context.textTheme.displayMedium!
                        .copyWith(color: AppColors.black),
                  ),
                )
              ]),
              Flexible(
                child: TabBarView(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.of(context).thisSectionIsEmpty,
                            style: context.textTheme.displayMedium!
                                .copyWith(color: AppColors.black),
                          )
                        ],
                      ),
                    ),
                    const CategoryItem(),
                    const FavouritePage()
                  ],
                ),
              )
            ],
          )),
    );
  }
}
