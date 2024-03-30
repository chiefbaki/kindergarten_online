import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [HomeRoute(), BagRoute(), HistoryRoute(), HomeRoute()],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              selectedLabelStyle: AppFonts.s12w500,
              selectedItemColor: AppColors.green,
              unselectedItemColor: AppColors.labelColor,
              currentIndex: tabsRouter.activeIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    label: 'Главная',
                    icon: Image.asset(
                      Images.icon1,
                      color: tabsRouter.activeIndex == 0
                          ? AppColors.green
                          : AppColors.labelColor,
                    )),
                BottomNavigationBarItem(
                    label: 'Корзина',
                    icon: Image.asset(
                      Images.icon2,
                      color: tabsRouter.activeIndex == 1
                          ? AppColors.green
                          : AppColors.labelColor,
                    )),
                BottomNavigationBarItem(
                    label: 'История',
                    icon: Image.asset(
                      Images.icon3,
                      color: tabsRouter.activeIndex == 2
                          ? AppColors.green
                          : AppColors.labelColor,
                    )),
                BottomNavigationBarItem(
                    label: 'Инфо',
                    icon: Image.asset(
                      Images.icon4,
                      color: tabsRouter.activeIndex == 3
                          ? AppColors.green
                          : AppColors.labelColor,
                    )),
              ],
            ));
      },
    );
  }
}
