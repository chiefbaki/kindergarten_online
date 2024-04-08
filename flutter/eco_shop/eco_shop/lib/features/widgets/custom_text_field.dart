import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;
  const CustomTextField(
      {super.key, required this.controller, required this.onSubmitted});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  double width = double.infinity;
  bool isCancelVisible = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      changeWidth();
    });
  }

  void changeWidth() {
    setState(() {
      if (widget.controller.text.isNotEmpty) {
        width = 100;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: widget.controller,
        onSubmitted: widget.onSubmitted,
        decoration: InputDecoration(
            fillColor: AppColors.textFieldColor,
            filled: true,
            hintText: "Быстрый поиск",
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            hintStyle: AppFonts.s16w500.copyWith(color: AppColors.labelColor),
            prefixIcon: Image.asset(
              Images.search01,
              width: 24,
            ),
            enabledBorder: outlineBorder(),
            focusedBorder: outlineBorder()),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.textFieldColor));
  }
}
