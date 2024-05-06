import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/chats/domain/entities/req/chat_list_entity.dart';
import 'package:kindergarten_online/features/chats/presentation/blocs/messages_bloc/messages_bloc.dart';

class ChatListItem extends StatelessWidget {
  final ChatListEntity entity;
  const ChatListItem(
      {super.key, required this.textStyle, required this.entity});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.lightBlue,
      highlightColor: const Color.fromARGB(255, 183, 238, 254),
      onLongPress: () {
        debugPrint("long press");
      },
      onTap: () {
        context
            .read<MessagesBloc>()
            .add(MessagesEvent.getMessages(id: entity.id.toString()));
        context.router.push(ChatRoute(
            firstName: entity.firstName ?? "",
            lastName: entity.lastName,
            avatar: entity.avatar));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: ClipRRect(
              clipBehavior: Clip.antiAlias, child: Image.asset(Imgs.ava)),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 35, left: 5),
            child: Text(
              "${entity.firstName} ${entity.lastName}",
              style: textStyle.displayMedium!.copyWith(color: AppColors.black),
            ),
          ),
        ),
      ),
    );
  }
}
