import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/home/data/models/home_products_dto.dart';

import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Column(
              children: [
                Text(
                  "Эко Маркет",
                  style: AppFonts.s24w700.copyWith(color: AppColors.fontColor),
                ),
                const SizedBox(
                  height: 18,
                ),
                Expanded(
                    child: GridView.builder(
                        itemCount: HomeProductsDto.getProducts.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 11,
                        ),
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              final selectedCategory =
                                  HomeProductsDto.getProducts[index].category;
                              debugPrint(selectedCategory);
                              context.router.push(ProductsRoute(
                                  categoryFromHome: selectedCategory));
                            },
                            child: Image.asset(
                                width: 166,
                                height: 180,
                                HomeProductsDto.getProducts[index].img ?? ""),
                          );
                        }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
