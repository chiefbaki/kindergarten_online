import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/back_btn.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/messages_bloc/messages_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/bottom_chat_area.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/chat_user_info_widget.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/message_bubble.dart';
import 'package:kindergarten_online/src/features/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/generated/l10n.dart';

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

  // WebSocketChannel? _channel;
  // Future<void> _connect(String id) async {
  //   try {
  //     _channel = WebSocketChannel.connect(
  //       Uri.parse(
  //           "wss://84.54.12.206/chat/7/?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE1NzUyNTI2LCJpYXQiOjE3MTUxNDc3MjYsImp0aSI6IjI5MjcxYTY2NmJjMzRjYjRhMDk2ZjVlZjY5NzcyMzA4IiwidXNlcl9pZCI6Nn0.Kx8aGcpQvxQpo-Dwu7yy95lMOxmstOuPACmNO5exgzw"),
  //     );
  //     await _channel!.ready;
  //     debugPrint("connected");
  //     _channel?.stream.listen((event) {
  //       final content = event["content"];
  //       print("EVENT $content");
  //     });
  //   } on SocketException catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }

  // void _send(TextEditingController message) {
  //   final msg = message.text;
  //   if (msg.isNotEmpty) {
  //     _channel!.sink.add(message);
  //     message.clear();
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _connect(widget.resultEntity.id.toString());
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _focusNode.hasFocus;
  // }

  @override
  void dispose() {
    super.dispose();
    _msgController.dispose();
    _focusNode.dispose();
    // _channel!.sink.close();
  }

  // List<String> _messages = [];

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
              bottom: (viewInset.bottom > 25) ? 15.0 : 25),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<MessagesBloc, MessagesState>(
                  builder: (context, state) {
                    return state.when(
                        initial: () => const SizedBox(),
                        loading: () => const CustomProgressIndicator(),
                        success: (entity) {
                          return entity.results!.isNotEmpty
                              ? ListView.builder(
                                  reverse: true,
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: entity.count,
                                  itemBuilder: (_, index) {
                                    return Center(
                                      child: MessageBubble(
                                        resultEntity: entity.results![index],
                                        textStyle: textStyle,
                                        index: index,
                                      ),
                                    );
                                  })
                              : Text(
                                  S.of(context).empty,
                                  style: textStyle.displayMedium!
                                      .copyWith(color: AppColors.black),
                                );
                        },
                        failure: (e) => Center(
                              child: Text(
                                e,
                                style: textStyle.displayMedium!
                                    .copyWith(color: AppColors.black),
                              ),
                            ));
                  },
                ),
              ),
              BottomChatArea(
                  onPressed: () {},
                  focusNode: _focusNode,
                  textStyle: textStyle,
                  msgController: _msgController),
            ],
          ),
        ));
  }
}
