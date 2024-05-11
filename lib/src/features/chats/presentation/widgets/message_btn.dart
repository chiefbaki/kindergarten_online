import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

class MessageBtn extends StatelessWidget {
  final void Function() onPressed;
  const MessageBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.message,
          size: 25,
          color: AppColors.blue,
        ));
  }
}
