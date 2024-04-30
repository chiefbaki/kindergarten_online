import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class ChildCard extends StatelessWidget {
  final String name;
  final String age;
  final String number;
  final String group;
  const ChildCard({
    super.key,
    required this.textStyle,
    required this.name,
    required this.age,
    required this.number,
    required this.group,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(Imgs.ava),
      title: Row(
        children: [
          Text(
            name,
            style: textStyle.displayMedium!.copyWith(color: AppColors.black),
          ),
          const Spacer(),
          Text(
            S.of(context).age,
            style: textStyle.displayMedium!.copyWith(color: AppColors.grey),
          )
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: RichText(
            text: TextSpan(
                text: "Садик №$number",
                style: textStyle.displayMedium!
                    .copyWith(color: AppColors.lightGrey),
                children: [
              TextSpan(
                  text: '  группа "$group"',
                  style:
                      textStyle.displaySmall!.copyWith(color: AppColors.black))
            ])),
      ),
    );
  }
}
