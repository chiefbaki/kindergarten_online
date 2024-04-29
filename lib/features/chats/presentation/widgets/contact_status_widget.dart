import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/message_btn.dart';

class ContactStatusWidget extends StatelessWidget {
  const ContactStatusWidget({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Imgs.ava),
      title: Text(
        "Ислам\nКурбанов",
        style:
            textStyle.displayLarge!.copyWith(color: AppColors.black),
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
              "В сети",
              style: textStyle.titleSmall!
                  .copyWith(color: AppColors.lightGrey),
            )
          ],
        ),
      ),
      trailing: MessageBtn(
        onPressed: () {},
      ),
    );
  }
}
