import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/widgets/custom_float_btn.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  const CustomScaffold({super.key, required this.body, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: const CustomFloatBtn(isToSwitch: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
    );
  }
}
