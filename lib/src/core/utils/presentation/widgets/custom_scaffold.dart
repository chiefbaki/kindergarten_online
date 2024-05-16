import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_float_btn.dart';

const double _paddingUnit = 5;

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
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(bottom: _paddingUnit * 3),
        child: CustomFloatBtn(
          isToSwitch: true,
          showButton: true,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
    );
  }
}
