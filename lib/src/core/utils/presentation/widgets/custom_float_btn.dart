import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class CustomFloatBtn extends StatelessWidget {
  final Widget icon;
  final bool isToSwitch;
  final bool showButton;
  const CustomFloatBtn(
      {super.key,
      this.icon = const Icon(Icons.abc),
      required this.isToSwitch,
      required this.showButton});

  @override
  Widget build(BuildContext context) {
    final List<String> itemNames = [
      S.of(context).goodsAndServices,
      S.of(context).myContacts,
      S.of(context).ChatsWithParents,
      S.of(context).attendace,
      S.of(context).creativity,
      S.of(context).paymentReceipts,
      S.of(context).referenceInformation,
      S.of(context).Settings,
      S.of(context).technicalSupportQuestions,
      S.of(context).cctv,
      S.of(context).timetableOfClasses,
      S.of(context).newsFeed,
    ];
    return showButton
        ? ElevatedButton(
            onPressed: isToSwitch
                ? () {
                    context.showAlertDialog(
                        showButton: showButton, itemNames: itemNames);
                  }
                : () {
                    context.router.maybePop();
                  },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue,
                padding: REdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: icon)
        : const SizedBox.shrink();
  }
}
