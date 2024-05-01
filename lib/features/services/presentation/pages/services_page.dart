import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/services/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:kindergarten_online/features/services/presentation/pages/favourite_page.dart';
import 'package:kindergarten_online/features/services/presentation/widgets/category_item.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';

@RoutePage()
class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  void initState() {
    super.initState();
    context.read<CategoryBloc>().add(const CategoryEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(children: [
            NavBar(textStyle: textStyle, text: "Товары / Услуги"),
            SizedBox(
              height: 25.h,
            ),
            Flexible(
              child: DefaultTabController(
                  animationDuration: Durations.extralong2,
                  length: 3,
                  initialIndex: 1,
                  child: Column(
                    children: [
                      TabBar(tabs: [
                        Tab(
                          child: Text(
                            "Популярное",
                            style: textStyle.displayMedium!
                                .copyWith(color: AppColors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Каталог",
                            style: textStyle.displayMedium!
                                .copyWith(color: AppColors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Избранное",
                            style: textStyle.displayMedium!
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
                                    "Данный раздел пока пуст",
                                    style: textStyle.displayMedium!
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
            ),
          ]),
        ),
      ),
    );
  }
}
