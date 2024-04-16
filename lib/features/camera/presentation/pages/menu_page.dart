import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/camera/data/menu_item_model.dart';
import 'package:kindergarten_online/features/camera/presentation/widgets/menu_card.dart';
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
      floatingActionButton: CustomFloatBtn(
        onPressed: () {
          context.router.maybePop();
        },
        icon: const Icon(
          Icons.close,
          color: AppColors.lightBlue,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
