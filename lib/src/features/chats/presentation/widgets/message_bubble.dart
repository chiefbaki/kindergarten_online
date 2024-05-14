import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/chat_messages_list_entity.dart';

const _maxWidthUnit = 0.66;

class MessageBubble extends StatelessWidget {
  final int index;
  final ResultsEntity resultEntity;
  const MessageBubble(
      {super.key,
      required this.textStyle,
      required this.index,
      required this.resultEntity});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    // debugPrint(resultEntity.content);
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: sizeOf.width * _maxWidthUnit),
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(colors: [
                Color(0XFF36D1DC),
                Color(0xff5B86E5),
              ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
          child: Text(
            resultEntity.content ?? "",
            style: textStyle.displayMedium!
                .copyWith(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
