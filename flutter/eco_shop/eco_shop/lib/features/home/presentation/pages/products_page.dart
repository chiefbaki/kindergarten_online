import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/add_btn.dart';
import 'package:eco_shop/features/widgets/arrow_btn.dart';
import 'package:eco_shop/features/widgets/circle_btn.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/custom_float_btn.dart';
import 'package:eco_shop/features/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

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
                Container(
                  width: 166,
                  height: MediaQuery.of(context).size.height * 0.256,
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
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      width: double.infinity,
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 13),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(Images.apple),
                                              Text(
                                                "Яблоко красная радуга сладкая",
                                                style: AppFonts.s24w700
                                                    .copyWith(
                                                        color: AppColors
                                                            .fontColor),
                                                textAlign: TextAlign.start,
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                "56 c шт",
                                                style: AppFonts.s24w700
                                                    .copyWith(
                                                        color: AppColors.green),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                "Cочный плод яблони, который употребляется в пищу в свежем и запеченном виде, служит сырьём в кулинарии и для приготовления напитков.",
                                                style: AppFonts.s16w400
                                                    .copyWith(
                                                        color: AppColors
                                                            .articleColor),
                                              ),
                                              Container(
                                                height: 79,
                                                decoration: const BoxDecoration(
                                                    color: AppColors
                                                        .textFieldColor),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    isVisibleBottom
                                                        ? CustomBtn(
                                                            title: "Добавить",
                                                            onPressed: () {
                                                              setState(() {
                                                                isVisibleBottom =
                                                                    !isVisibleBottom;
                                                              });
                                                            },
                                                          )
                                                        : Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              const Text(
                                                                "112 с",
                                                                style: AppFonts
                                                                    .s24w700,
                                                              ),
                                                              const SizedBox(
                                                                width: 170,
                                                              ),
                                                              CircleBtn(
                                                                  onTap: () {},
                                                                  icon: Icons
                                                                      .remove),
                                                              const SizedBox(
                                                                width: 41,
                                                              ),
                                                              const Text(
                                                                "2",
                                                                style: AppFonts
                                                                    .s18w500,
                                                              ),
                                                              const SizedBox(
                                                                width: 41,
                                                              ),
                                                              CircleBtn(
                                                                  onTap: () {},
                                                                  icon:
                                                                      Icons.add)
                                                            ],
                                                          )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Image.asset(Images.apple)),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Яблоко красная радуга сладкая",
                          style: AppFonts.s14w500
                              .copyWith(color: AppColors.fontColor),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "56 c",
                          style:
                              AppFonts.s20w700.copyWith(color: AppColors.green),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        isVisible
                            ? AddBtn(
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleBtn(
                                    onTap: () {},
                                    icon: Icons.remove,
                                  ),
                                  const Text(
                                    "1",
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
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: const CustomFloatBtn(
        sum: "396",
      ),
    );
  }
}
