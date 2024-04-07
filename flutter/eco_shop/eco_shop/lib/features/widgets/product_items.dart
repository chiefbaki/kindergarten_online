import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/home/data/models/products_dto.dart';
import 'package:eco_shop/features/widgets/add_btn.dart';
import 'package:eco_shop/features/widgets/circle_btn.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final ProductsDto products;
  const ProductItem({super.key, required this.products});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 240, 240),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  customModelBottomSheet(context, widget.products);
                },
                child: Image.asset(
                  Images.apple,
                )),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.products.name,
              style: widget.products.name.length >= 9
                  ? AppFonts.s11w500.copyWith(color: AppColors.fontColor)
                  : AppFonts.s14w500.copyWith(color: AppColors.fontColor),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              widget.products.price.toString(),
              style: AppFonts.s20w700.copyWith(color: AppColors.green),
            ),
            const SizedBox(
              height: 16,
            ),
            isVisible
                ? Center(
                    child: AddBtn(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleBtn(
                        onTap: () {},
                        icon: Icons.remove,
                      ),
                      Text(
                        widget.products.quantity.toString(),
                        style: AppFonts.s18w500,
                      ),
                      CircleBtn(
                        onTap: () {},
                        icon: Icons.add,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> customModelBottomSheet(
    BuildContext context,
    ProductsDto products,
  ) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (BuildContext context) {
          bool isVisibleBottom = true;
          return StatefulBuilder(builder: (context, setState) {
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.62,
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(Images.apple),
                              Text(
                                products.name,
                                style: AppFonts.s24w700
                                    .copyWith(color: AppColors.fontColor),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "${products.price} c шт",
                                style: AppFonts.s24w700
                                    .copyWith(color: AppColors.green),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                products.description,
                                style: AppFonts.s16w400
                                    .copyWith(color: AppColors.articleColor),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.zero,
                          height: 85,
                          decoration: const BoxDecoration(
                              color: AppColors.textFieldColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              isVisibleBottom
                                  ? CustomBtn(
                                      title: "Добавить",
                                      onPressed: () {
                                        setState(() {
                                          isVisibleBottom = !isVisibleBottom;
                                        });
                                      },
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${products.price} с",
                                          style: AppFonts.s24w700,
                                        ),
                                        const SizedBox(
                                          width: 170,
                                        ),
                                        CircleBtn(
                                            onTap: () {}, icon: Icons.remove),
                                        const SizedBox(
                                          width: 41,
                                        ),
                                        const Text(
                                          "1",
                                          style: AppFonts.s18w500,
                                        ),
                                        const SizedBox(
                                          width: 41,
                                        ),
                                        CircleBtn(onTap: () {}, icon: Icons.add)
                                      ],
                                    )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          });
        });
  }
}
