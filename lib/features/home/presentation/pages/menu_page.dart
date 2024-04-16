import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/home/data/menu_item_model.dart';
import 'package:kindergarten_online/features/home/presentation/widgets/menu_card.dart';
import 'package:kindergarten_online/features/widgets/custom_float_btn.dart';

@RoutePage()
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 155),
        child: GridView.builder(
            itemCount: MenuItem.items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 34, crossAxisSpacing: 25),
            itemBuilder: (_, index) {
              return MenuCard(
                textStyle: textStyle,
                img: MenuItem.items[index].img,
                title: MenuItem.items[index].name,
              );
            }),
      ),
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 76),
          child: CustomFloatBtn(
            onPressed: () {
              context.router.maybePop();
            },
            icon: Icons.close,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
