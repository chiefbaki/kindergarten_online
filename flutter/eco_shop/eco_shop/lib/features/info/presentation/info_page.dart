import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/extensions/uri_launch.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/info_btn.dart';
import 'package:flutter/material.dart';


@RoutePage()
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 450,
                height: 310,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(Images.infoBbg))),
                child: SafeArea(
                  child: Column(
                    children: [
                      Text(
                        "Инфо",
                        style:
                            AppFonts.s18w500.copyWith(color: AppColors.white),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Эко Маркет",
                      style:
                          AppFonts.s24w700.copyWith(color: AppColors.fontColor),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      child: Text(
                        "Фрукты, овощи, зелень, сухофрукты а так же сделанные из натуральных ЭКО продуктов (варенье, салаты, соления, компоты и т.д.) можете заказать удобно, качественно и по доступной цене.\nГотовы сотрудничать взаимовыгодно с магазинами.\nНаши цены как на рынке.\nМы заинтересованы в экономии ваших денег и времени.\nСтоимость доставки 150 сом и ещё добавлен для окраину города.\nПри отказе подтвержденного заказа более \n2-х раз Клиент заносится в чёрный список!!",
                        style: AppFonts.s16w400
                            .copyWith(color: AppColors.articleColor),
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    InfoBtn(
                      title: "Позвонить",
                      img: Images.phone,
                      onPressed: () {
                        uriLaunch(link: "tel:+996-501-59-44-44");
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    InfoBtn(
                      title: "WhatsApp",
                      img: Images.whatsapp,
                      onPressed: () {
                        uriLaunch(
                            link:
                                "https://api.whatsapp.com/send?phone=996501594444");
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    InfoBtn(
                      title: "Instagram",
                      img: Images.instagram,
                      onPressed: () {
                        uriLaunch(
                            link: "https://www.instagram.com/accounts/login/");
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
