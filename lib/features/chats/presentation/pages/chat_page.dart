import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/back_btn.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/chat_user_info_widget.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/message_form.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';

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
    return CustomScaffold(
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
        body: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 150.h,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MessageForm(
                        focusNode: _focusNode,
                        textStyle: textStyle,
                        controller: _msgController,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                            color: AppColors.blue,
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
