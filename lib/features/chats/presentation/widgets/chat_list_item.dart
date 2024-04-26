import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';

class ChatListItem extends StatelessWidget {
  final String? img;
  final String? name;
  const ChatListItem({super.key, required this.textStyle, this.img, this.name});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: ListTile(
        leading: ClipRRect(
            clipBehavior: Clip.antiAlias, child: Image.asset(img ?? Imgs.ava)),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 35, left: 5),
          child: Text(
            name ?? "Дубровская Анжелика Сергеевна",
            style: textStyle.displayMedium!.copyWith(color: AppColors.black),
          ),
        ),
      ),
    );
  }
}
