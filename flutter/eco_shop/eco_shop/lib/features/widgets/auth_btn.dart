import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Color color;
  const AuthBtn({
    super.key,
    required this.color,
    required this.onPressed,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(title,
            style: AppFonts.s14w500
                .copyWith(color: color)));
  }
}
