import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/features/news/presentation/widgets/news_item.dart';
import 'package:kindergarten_online/features/widgets/custom_float_btn.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: "Новости"),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [NewsItem(textStyle: textStyle)],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatBtn(
          icon: const Icon(Icons.abc),
          onPressed: () {
            context.router.push(const MenuRoute());
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
