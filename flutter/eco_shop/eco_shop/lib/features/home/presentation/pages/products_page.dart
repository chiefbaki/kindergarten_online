import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/home/data/models/products_dto.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_bloc.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_event.dart';
import 'package:eco_shop/features/home/presentation/blocs/products_bloc/products_state.dart';
import 'package:eco_shop/features/widgets/arrow_btn.dart';
import 'package:eco_shop/features/widgets/custom_float_btn.dart';
import 'package:eco_shop/features/widgets/custom_text_field.dart';
import 'package:eco_shop/features/widgets/product_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  final List<ProductsDto>? productList;
  const ProductsPage({super.key, this.productList});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    // context
    //     .read<ProductsBloc>()
    //     .add(const ProductsEvent.getProductsByCatByName());
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  final List<String> _choiceData = [
    "Все",
    "Fruits",
    "Dried_fruits",
    "Vegetables",
    "Milk_products",
    "Tea_Coffee",
    "Greenery"
  ];

  int _selectedIndex = 0;

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
                        context.router.maybePop();
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
                  controller: _controller,
                  onSubmitted: (value) {
                    setState(() {
                      _selectedIndex = 0;
                    });
                    context.read<ProductsBloc>().add(
                        ProductsEvent.getProductsByCatByName(byName: value));
                    _updateCategoryByIndex(productName: value);
                  },
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _choiceData.length,
                    itemBuilder: ((context, index) {
                      return ChoiceChip(
                        side: const BorderSide(color: AppColors.ligthGrey),
                        backgroundColor: Colors.white,
                        selectedColor: AppColors.green,
                        label: Text(
                          _choiceData[index],
                          style: AppFonts.s16w500
                              .copyWith(color: AppColors.ligthGrey),
                        ),
                        labelStyle:
                            AppFonts.s16w500.copyWith(color: Colors.white),
                        selected: _selectedIndex == index,
                        onSelected: (val) {
                          _selectedIndex = index;
                          setState(() {});
                          context.read<ProductsBloc>().add(
                              ProductsEvent.getProductsByCatByName(
                                  byCategory: _choiceData[index]));
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
                BlocBuilder<ProductsBloc, ProductsState>(
                  builder: (context, state) {
                    return state.when(
                        inital: () => const SizedBox(),
                        loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                        success: (success) {
                          return Expanded(
                            child: GridView.builder(
                              shrinkWrap: true,
                              itemCount: success.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: MediaQuery.of(context)
                                        .size
                                        .width /
                                    (MediaQuery.of(context).size.height / 1.70),
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 10,
                              ),
                              itemBuilder: (_, index) {
                                return ProductItem(
                                  products: success[index],
                                );
                              },
                            ),
                          );
                        },
                        failure: (error) => Text(error));
                  },
                ),
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

  void _updateCategoryByIndex({required String productName}) {
    Map<String, String> productCategoryMap = {
      "яблоко": "Fruits",
      "груша": "Fruits",
      "клубника": "Fruits",
      "манго": "Fruits",
      "апельсины": "Fruits",
      "вишня": "Fruits",
      "изюм": "Dried_fruits",
      "помидоры": "Vegetables",
      "огурцы": "Vegetables",
      "лук": "Vegetables",
      "морковь": "Vegetables",
      "перец": "Vegetables",
      "молоко": "Milk_products",
      "йогурт": "Milk_products",
      "кофе": "Tea_Coffee",
      "чай": "Tea_Coffee",
      "укроп": "Greenery",
      "петрушка": "Tea_Coffee",
    };

    productCategoryMap.forEach((key, value) {
      if (productName.toLowerCase().contains(key)) {
        String category = value;
        setState(() {
          _selectedIndex = _choiceData.indexOf(category);
        });
      }
    });
  }
}
