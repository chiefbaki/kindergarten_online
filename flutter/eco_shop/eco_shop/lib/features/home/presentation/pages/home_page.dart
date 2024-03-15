import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/resources/resources.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Эко Маркет",
          style: AppFonts.s24w700,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(
            children: [
              Image.asset(
                Images.home,
                width: 166,
                height: 180,
              )
            ],
          ),
        ),
      ),
    );
  }
}
