import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/chat_messages_list_entity.dart';

const _maxWidthUnit = 0.55;

class MessageBubble extends StatelessWidget {
  final ResultsEntity resultEntity;
  final String message;
  const MessageBubble(
      {super.key,
      required this.textStyle,
      required this.resultEntity,
      required this.message});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
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
        constraints: BoxConstraints(maxWidth: sizeOf.width * _maxWidthUnit),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
                colors: color,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        child: Text(
          message,
          style: textStyle.titleSmall!.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
