import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/back_btn.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/bottom_chat_area.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/chat_user_info_widget.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/message_bubble.dart';


@RoutePage()
class ChatPage extends StatefulWidget {
  final String firstName;
  final String? lastName;
  final String? avatar;
  const ChatPage(
      {super.key, required this.firstName, this.lastName, this.avatar});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _msgController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _focusNode.hasFocus;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final viewInset = MediaQuery.viewInsetsOf(context);
    return Scaffold(
        appBar: AppBar(
          leading: BackBtn(
            onPressed: () {
              context.router.maybePop();
            },
          ),
          title: ChatUserInfoWidget(
            textStyle: textStyle,
            firstName: widget.firstName,
            lastName: widget.lastName ?? "",
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 234, 233, 233),
        body: Padding(
          padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
              bottom: (viewInset.bottom > 40) ? 15.0 : 40),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (_, index) {
                      return MessageBubble(
                        textStyle: textStyle,
                        index: index,
                      );
                    }),
              ),
              BottomChatArea(
                  focusNode: _focusNode,
                  textStyle: textStyle,
                  msgController: _msgController),
            ],
          ),
        ));
  }
}
