import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/message_btn.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class ContactStatusWidget extends StatelessWidget {
  final String name;
  final String img;
  const ContactStatusWidget(
      {super.key,
      required this.textStyle,
      required this.name,
      required this.img});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipOval(child: Image.asset(Imgs.ava)),
      title: Text(
        name,
        style: textStyle.displayLarge!.copyWith(color: AppColors.black),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 5.r,
              backgroundColor: AppColors.lightGrey,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              S.of(context).online,
              style: textStyle.titleSmall!.copyWith(color: AppColors.lightGrey),
            )
          ],
        ),
      ),
      trailing: MessageBtn(
        onPressed: () {
          // context.router.push(ChatRoute(firstName: name, avatar: img));
        },
      ),
    );
  }
}
