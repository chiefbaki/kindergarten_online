import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class ChildCard extends StatelessWidget {
  final String name;
  final String age;
  final String number;
  final String group;
  const ChildCard({
    super.key,
    required this.name,
    required this.age,
    required this.number,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(Imgs.ava),
      title: Row(
        children: [
          Text(
            name,
            style: context.textTheme.displayMedium!
                .copyWith(color: AppColors.black),
          ),
          const Spacer(),
          Text(
            S.of(context).age,
            style: context.textTheme.displayMedium!
                .copyWith(color: AppColors.grey),
          )
        ],
      ),
      subtitle: Padding(
        padding: REdgeInsets.symmetric(vertical: 5),
        child: RichText(
            text: TextSpan(
                text: "Садик №$number",
                style: context.textTheme.displayMedium!
                    .copyWith(color: AppColors.lightGrey),
                children: [
              TextSpan(
                  text: '  группа "$group"',
                  style: context.textTheme.displaySmall!
                      .copyWith(color: AppColors.black))
            ])),
      ),
    );
  }
}
