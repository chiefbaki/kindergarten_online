import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/widgets/custom_float_btn.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Color backgroundColor;
  const CustomScaffold(
      {super.key,
      required this.body,
      this.appBar,
      this.backgroundColor = AppColors.white});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      body: body,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: const CustomFloatBtn(
          isToSwitch: true,
          showButton: true,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
    );
  }
}
