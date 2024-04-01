import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/features/widgets/arrow_btn.dart';
import 'package:eco_shop/features/widgets/custom_alert_dialog.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:eco_shop/features/widgets/order_text_field.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _landmark = TextEditingController();
  final TextEditingController _comment = TextEditingController();

  bool switcher = false;

  void isNotEmptyField() {
    switcher = _phoneNumber.text.isNotEmpty &&
        _address.text.isNotEmpty &&
        _landmark.text.isNotEmpty &&
        _comment.text.isNotEmpty;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _phoneNumber.addListener(() {
      isNotEmptyField();
    });
    _landmark.addListener(() {
      isNotEmptyField();
    });
    _address.addListener(() {
      isNotEmptyField();
    });
    _comment.addListener(() {
      isNotEmptyField();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _phoneNumber.dispose();
    _address.dispose();
    _landmark.dispose();
    _comment.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Column(
              children: [
                Row(
                  children: [
                    ArrowBtn(
                      onPressed: () {
                        context.router.maybePop(const BagRoute());
                      },
                    ),
                    const SizedBox(
                      width: 63,
                    ),
                    const Text(
                      "Оформление заказа",
                      style: AppFonts.s18w500,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                OrderTextField(
                  labelText: "Номер телефона",
                  controller: _phoneNumber,
                ),
                const SizedBox(
                  height: 20,
                ),
                OrderTextField(
                  labelText: "Адрес",
                  controller: _address,
                ),
                const SizedBox(
                  height: 20,
                ),
                OrderTextField(
                  labelText: "Ориентир",
                  controller: _landmark,
                ),
                const SizedBox(
                  height: 20,
                ),
                OrderTextField(
                  labelText: "Комментарии",
                  controller: _comment,
                ),
                const Spacer(),
                RichText(
                    text: TextSpan(
                        text: "Сумма заказа",
                        style: AppFonts.s20w700
                            .copyWith(color: AppColors.fontColor),
                        children: [
                      TextSpan(
                          text: " 340 c",
                          style: AppFonts.s24w700
                              .copyWith(color: AppColors.fontColor))
                    ])),
                const SizedBox(
                  height: 16,
                ),
                CustomBtn(
                    onPressed: () {
                      showCustomDialog(context);
                    },
                    title: "Заказать доставку"),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showCustomDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialog(
            widget: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Дата и время 07.07.2023 12:46",
                  style: AppFonts.s16w400.copyWith(color: AppColors.ligthGrey),
                ),
              ],
            ),
            title: "Заказ №343565657 оформлен",
            btn: CustomBtn(
              onPressed: () {
                context.router.replace(ProductsRoute());
              },
              title: "Перейти в магазин",
            ),
          );
        });
  }
}
