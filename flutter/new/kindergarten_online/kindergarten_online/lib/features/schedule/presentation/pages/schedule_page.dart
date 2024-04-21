import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/widgets/custom_float_btn.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';

@RoutePage()
class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                NavBar(textStyle: textStyle, text: "Расписание"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: const CustomFloatBtn(isToSwitch: false),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
