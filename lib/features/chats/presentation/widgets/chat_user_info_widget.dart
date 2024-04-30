import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/menu_btn.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class ChatUserInfoWidget extends StatelessWidget {
  const ChatUserInfoWidget({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              Imgs.ava,
              width: 35.w,
            ),
          )),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Islam Kurbanov",
            style: textStyle.displayMedium!.copyWith(color: AppColors.black),
          ),
          Gap(5.h),
          Text(S.of(context).online,
              style: textStyle.titleSmall!.copyWith(
                color: AppColors.grey,
              ))
        ],
      ),
      trailing: MenuBtn(
        onPressed: () {},
      ),
    );
  }
}
