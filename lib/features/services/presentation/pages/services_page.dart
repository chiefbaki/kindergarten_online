import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/services/data/products_model.dart';
import 'package:kindergarten_online/features/services/presentation/widgets/favorite_btn.dart';
import 'package:kindergarten_online/features/services/presentation/widgets/services_btn.dart';
import 'package:kindergarten_online/features/widgets/custom_float_btn.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';

@RoutePage()
class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Center(
            child: Column(
              children: [
                NavBar(
                  text: "Товары / Услуги",
                  textStyle: textStyle,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ServicesBtn(
                              textStyle: textStyle,
                              name: "Популярное",
                              onPressed: () {},
                            ),
                            ServicesBtn(
                              textStyle: textStyle,
                              name: "Избранное",
                              onPressed: () {},
                              color: AppColors.navyBlue,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 27.h,
                        ),
                        Expanded(
                            child: GridView.builder(
                                itemCount: ProductsModel.items.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 15,
                                        crossAxisSpacing: 15,
                                        childAspectRatio: 1),
                                itemBuilder: (_, index) => Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(ProductsModel
                                                  .items[index].img))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: FavoriteBtn(
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    )))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CustomFloatBtn(
          icon: const Icon(Icons.abc),
          onPressed: () {
            context.router.push(const MenuRoute());
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
