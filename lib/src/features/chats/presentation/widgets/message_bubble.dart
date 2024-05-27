import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/chat_messages_list_entity.dart';

const _maxWidthUnit = 0.55;

class MessageBubble extends StatelessWidget {
  final ResultsEntity resultEntity;
  final String message;
  const MessageBubble(
      {super.key, required this.resultEntity, required this.message});

  @override
  Widget build(BuildContext context) {
    debugPrint(resultEntity.content);
    final alignment =
        resultEntity.sender!.phone != resultEntity.recipient!.phone
            ? Alignment.centerLeft
            : Alignment.centerRight;

    final color = resultEntity.sender!.id == resultEntity.recipient!.id
        ? AppColors.senderColor
        : AppColors.recipientColor;
    return Align(
      alignment: alignment,
      child: Container(
        constraints:
            BoxConstraints(maxWidth: context.size!.width * _maxWidthUnit),
        padding: REdgeInsets.all(8),
        margin: REdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16).r,
            gradient: LinearGradient(
                colors: color,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        child: Text(
          message,
          style: context.textTheme.titleSmall!.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
