import 'package:flutter/material.dart';

class CalendarBtn extends StatelessWidget {
  final Widget icon;
  final Function() onPressed;
  const CalendarBtn({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        onPressed: onPressed,
        icon: icon);
  }
}
