import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class MessageBubble extends StatelessWidget {
  final int index;
  const MessageBubble(
      {super.key, required this.textStyle, required this.index});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    debugPrint("${sizeOf.width * 0.90}");
    return Container(
      constraints: BoxConstraints(maxWidth: sizeOf.width * 0.66),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(colors: [
            Color(0XFF36D1DC),
            Color(0xff5B86E5),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
      child: Text(
        "Привет, Ислам",
        style: textStyle.displayMedium!.copyWith(color: AppColors.black),
      ),
    );
  }
}
