import 'dart:convert';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/src/core/config/service_locator/locator.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/resources/logger.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/back_btn.dart';
import 'package:kindergarten_online/src/features/chats/data/data_sources/remote/web_socket_client.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/req/chat_list_entity.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/messages_bloc/messages_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/bottom_chat_area.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/chat_user_info_widget.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/message_bubble.dart';
import 'package:kindergarten_online/src/features/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:web_socket_channel/io.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  // final String firstName;
  // final String? lastName;
  // final String? avatar;
  // final String? userId;
  final ChatListEntity entity;
  const ChatPage(
      {super.key,
      // required this.firstName,
      // this.userId,
      // this.lastName,
      // this.avatar,
      required this.entity});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _msgController = TextEditingController();
  final _focusNode = FocusNode();

  final _log = sl<Logging>();

  late WebSocketClient _webSocketService;
  late IOWebSocketChannel _channel;
  final List<dynamic> _messages = [];

  @override
  void initState() {
    _webSocketService = WebSocketClient(widget.entity.id.toString(), sl());
    super.initState();
    _connect();
  }

  Future<void> _connect() async {
    try {
      _channel = await _webSocketService.connect();
      await _channel.ready;
      _log.log.info("connected");
      // _channel.stream.listen((event) {
      //   final content = event["content"];
      //   _log.log.info(content);
      // });
      _channel.stream.listen((message) {
        setState(() {
          _messages.add(json.decode(message));
        });
        debugPrint(message["content"]);
      });
    } on SocketException catch (e) {
      debugPrint(e.toString());
    }
  }

  // void _send(TextEditingController message) {
  //   final msg = message.text;
  //   if (msg.isNotEmpty) {
  //     _channel!.sink.add(message);
  //     message.clear();
  //   }
  // }

  void disconnect() {
    if (_channel.closeCode == null) {
      debugPrint("Disconnected");
    }
    _channel.sink.close();
  }

  @override
  void dispose() {
    super.dispose();
    _msgController.dispose();
    _focusNode.dispose();
    disconnect();
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
            firstName: widget.entity.firstName ?? "",
            lastName: widget.entity.lastName ?? "",
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
                                  itemCount: entity.results!.length,
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

  // void _loadMessageHistory() async {
  //   try {
  //     final messages = await _messageService.fetchMessageHistory();
  //     setState(() {
  //       _messages.addAll(messages);
  //     });
  //   } catch (e) {
  //     print('Error loading message history: $e');
  //   }
  // }
