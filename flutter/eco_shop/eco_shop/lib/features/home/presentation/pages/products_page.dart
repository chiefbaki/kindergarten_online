import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/home/data/models/products_dto.dart';
import 'package:eco_shop/features/widgets/arrow_btn.dart';
import 'package:eco_shop/features/widgets/custom_float_btn.dart';
import 'package:eco_shop/features/widgets/custom_text_field.dart';
import 'package:eco_shop/features/widgets/product_items.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  // final int? id;
  // final String? name;
  // final String? img;
  // final int? price;
  // final int? quantity;
  // final String? category;
  final List<ProductsDto>? productList;
  const ProductsPage({super.key, this.productList});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  int selectedIndex = 0;
  List<String> choiceData = ["Все", "Фрукты", "Сухофрукты", "Овощи"];
  bool isVisible = true;
  bool isVisibleBottom = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    ArrowBtn(
                      onPressed: () {
                        context.router.replace(const HomeRoute());
                      },
                    ),
                    const SizedBox(
                      width: 105,
                    ),
                    const Text(
                      "Продукты",
                      style: AppFonts.s18w500,
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  controller: controller,
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: choiceData.length,
                    itemBuilder: ((context, index) {
                      return ChoiceChip(
                        side: const BorderSide(color: AppColors.ligthGrey),
                        backgroundColor: Colors.white,
                        selectedColor: AppColors.green,
                        label: Text(
                          choiceData[index],
                          style: AppFonts.s16w500
                              .copyWith(color: AppColors.ligthGrey),
                        ),
                        labelStyle:
                            AppFonts.s16w500.copyWith(color: Colors.white),
                        selected: selectedIndex == index,
                        onSelected: (val) {
                          selectedIndex = index;
                          setState(() {});
                        },
                      );
                    }),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 8,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: widget.productList?.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 1.60),
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 10),
                        itemBuilder: (_, index) {
                          final product = widget.productList;
                          return ProductItem(
                              id: product![index].id,
                              name: product[index].name,
                              img: product[index].imageUrl,
                              price: product[index].price,
                              quantity: product[index].quantity,
                              category: product[index].category);
                        })),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: const CustomFloatBtn(
        sum: "396",
      ),
    );
  }
}
