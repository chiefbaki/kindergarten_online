import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/add_btn.dart';
import 'package:eco_shop/features/widgets/circle_btn.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final int id;
  final String name;
  final String img;
  final int price;
  final int quantity;
  final String category;
  const ProductItem(
      {super.key,
      required this.id,
      required this.name,
      required this.img,
      required this.price,
      required this.quantity,
      required this.category});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isVisible = true;
  bool isVisibleBottom = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 200,
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
                    customModelBottomSheet(context);
                  },
                  child: Image.asset(
                    Images.apple,
                    
                  )),
              const SizedBox(
                height: 4,
              ),
              Text(
                widget.name,
                style: AppFonts.s14w500.copyWith(color: AppColors.fontColor),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                widget.price.toString(),
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
                          widget.quantity.toString(),
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
      ),
    );
  }

  Future<dynamic> customModelBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(Images.apple),
                      Text(
                        "Яблоко красная радуга сладкая",
                        style: AppFonts.s24w700
                            .copyWith(color: AppColors.fontColor),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "56 c шт",
                        style:
                            AppFonts.s24w700.copyWith(color: AppColors.green),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Cочный плод яблони, который употребляется в пищу в свежем и запеченном виде, служит сырьём в кулинарии и для приготовления напитков.",
                        style: AppFonts.s16w400
                            .copyWith(color: AppColors.articleColor),
                      ),
                      Container(
                        height: 79,
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
                                      const Text(
                                        "112 с",
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
                                        "2",
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
  }
}
