import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/home/data/products_dto.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                        itemCount: ProductsDto.getProducts.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 11,
                        ),
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              context.router.push(const ProductsRoute());
                            },
                            child: Image.asset(
                                width: 166,
                                height: 180,
                                ProductsDto.getProducts[index].img ?? ""),
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
