import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/controller_listeners.dart';
import 'package:eco_shop/features/bag/presentation/bloc/delete_card/delete_card_bloc.dart';
import 'package:eco_shop/features/bag/presentation/bloc/shopping_card/shopping_card_bloc.dart';
import 'package:eco_shop/features/widgets/bag_item.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/custom_circle_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BagPage extends StatefulWidget {
  const BagPage({super.key});

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  @override
  void initState() {
    super.initState();
    context.read<ShoppingCardBloc>().add(const ShoppingCardEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    int tempVar = 100;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<ShoppingCardBloc, ShoppingCardState>(
            builder: (context, state) {
              return state.when(
                  initial: () => const SizedBox(),
                  loading: () => const CustomCircleProgress(),
                  success: (success) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            BlocListener<DeleteCardBloc, DeleteCardState>(
                              listener: (context, state) {
                                state.when(
                                    initial: () => const SizedBox(),
                                    loading: () => print("loading"),
                                    success: (success) => print(success),
                                    failure: (e) => print(e));
                              },
                              child: TextButton(
                                  onPressed: () {
                                    // context.read<DeleteCardBloc>().add(DeleteCardEvent.delete(productId: success., quantity: quantity));
                                  },
                                  child: Text(
                                    "Очистить",
                                    style: AppFonts.s18w500
                                        .copyWith(color: AppColors.red),
                                  )),
                            ),
                            const SizedBox(
                              width: 53,
                            ),
                            Text(
                              "Корзина",
                              style: AppFonts.s18w500
                                  .copyWith(color: AppColors.fontColor),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Expanded(
                          child: ListView.separated(
                              itemBuilder: (_, index) {
                                return BagItem(
                                  title: success.titles[index],
                                  price: success.prices[index],
                                  quantity: success.quantities[index],
                                  imagePaths: success.imagePaths[index],
                                );
                              },
                              separatorBuilder: (_, index) {
                                return const SizedBox(
                                  height: 12,
                                );
                              },
                              itemCount: success.titles.length),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Сумма",
                                  style: AppFonts.s16w500
                                      .copyWith(color: AppColors.articleColor),
                                ),
                                Text(
                                  "${success.sum} с",
                                  style: AppFonts.s16w500
                                      .copyWith(color: AppColors.fontColor),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Доставка",
                                  style: AppFonts.s16w500
                                      .copyWith(color: AppColors.articleColor),
                                ),
                                Text(
                                  "${success.delivery} с",
                                  style: AppFonts.s16w500
                                      .copyWith(color: AppColors.fontColor),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Итого",
                                  style: AppFonts.s16w500
                                      .copyWith(color: AppColors.articleColor),
                                ),
                                Text(
                                  "${success.total} с",
                                  style: AppFonts.s16w500
                                      .copyWith(color: AppColors.fontColor),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 156,
                            ),
                            CustomBtn(
                                onPressed: () {
                                  tempVar < 300
                                      ? context.router.push(const OrderRoute())
                                      : showBagDialog(context);
                                },
                                title: "Оформить заказ"),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  failure: ((error) => Text(error)));
            },
          ),
        ),
      ),
    );
  }
}
