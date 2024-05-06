import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/chats/domain/entities/chat_messages_list_entity.dart';
import 'package:web_socket_channel/io.dart';

const _maxWidthUnit = 0.66;

class MessageBubble extends StatefulWidget {
  final int index;
  final ResultsEntity resultEntity;
  const MessageBubble(
      {super.key,
      required this.textStyle,
      required this.index,
      required this.resultEntity});

  final TextTheme textStyle;

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  IOWebSocketChannel? _channel;
  void _connect(String id) {
    try {
      _channel = IOWebSocketChannel.connect(
        "wss://84.54.12.206/chat/7/?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE1NTc5NzMwLCJpYXQiOjE3MTQ5NzQ5MzAsImp0aSI6ImE5OWM0ODU2YTRkYjQ2ZTk4OTIxZjU1NzNjNjNkNjM2IiwidXNlcl9pZCI6Nn0.L9tfywloNdpStP9rW0w-E_h8EfYy9BMEjMtBPWsSRpk",
      );
      debugPrint("connected");
      _channel?.stream.listen((event) {
        final content = event["content"];
        print("EVENT $content");
      });
    } on SocketException catch (e) {
      debugPrint(e.toString());
    }
  }

  void _send(TextEditingController message) {
    final msg = message.text;
    if (msg.isNotEmpty) {
      _channel!.sink.add(message);
      message.clear();
    }
  }

  @override
  void initState() {
    super.initState();
    _connect(widget.resultEntity.id.toString());
  }

  @override
  void dispose() {
    _channel!.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    debugPrint(widget.resultEntity.content);
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
            widget.resultEntity.content ?? "",
            style: widget.textStyle.displayMedium!
                .copyWith(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}