import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/services/service_locator.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/src/core/utils/resources/logger.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/back_btn.dart';
import 'package:kindergarten_online/src/features/chats/data/data_sources/remote/web_socket_client.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/req/chat_list_entity.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/messages_bloc/messages_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/bottom_chat_area.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/chat_user_info_widget.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/message_bubble.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

final _baseUrl = dotenv.env["WSS_URL"];

@RoutePage()
class ChatPage extends StatefulWidget {
  final ChatListEntity entity;
  const ChatPage({super.key, required this.entity});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _msgController = TextEditingController();
  final _focusNode = FocusNode();

  final _log = sl<Logging>();

  late WebSocketClient _webSocketService;
  late WebSocketChannel _channel;
  final List<dynamic> _messages = [];

  @override
  void initState() {
    super.initState();
    _webSocketService = WebSocketClient(widget.entity.id.toString(), sl());
    _listen();
  }

  Future<void> _listen() async {
    try {
      _channel = await _webSocketService.connect();
      await _channel.ready;
      _log.log.info("connected");
      _channel.stream.listen((message) {
        setState(() {
          _messages.insert(0, message);
        });
        debugPrint("LISTEN - ${message["sender"]} - added");
      });
    } catch (e) {
      _log.log.severe("Failed to connect: $e");
    }
  }

  void _send(TextEditingController message) {
    final msg = message.text;
    if (_channel.closeCode != null) {
      _log.log.info("SEND - ${message.text} - disconnected");
    }
    if (msg.isNotEmpty) {
      try {
        _channel.sink.add(msg);
        _sendMessageToBloc(context, msg);
        debugPrint("Sent message: $msg");
        message.clear();
      } catch (e) {
        _log.log.severe("Failed to send message: $e");
      }
    }
  }

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
                        success: (entity, msg) {
                          return entity.results!.isNotEmpty
                              ? ListView.builder(
                                  // physics: const ClampingScrollPhysics(),

                                  reverse: true,
                                  padding: EdgeInsets.zero,
                                  itemCount: entity.results!.length,
                                  itemBuilder: (_, index) {
                                    return Center(
                                      child: MessageBubble(
                                        resultEntity: entity.results![index],
                                        textStyle: textStyle,
                                        message: msg[index],
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
              // StreamBuilder(
              //     stream: _channel.stream,
              //     builder: (context, snapShot) {
              //       if (snapShot.hasData) {
              //         return ListView.builder(
              //             // physics: const ClampingScrollPhysics(),

              //             reverse: true,
              //             padding: EdgeInsets.zero,
              //             itemCount: _messages.length,
              //             itemBuilder: (_, index) {
              //               return Center(child: Text(snapShot.data));
              //             });
              //       }
              //       return const CircularProgressIndicator.adaptive();
              //     }),
              BottomChatArea(
                  onPressed: () {
                    _send(_msgController);
                    // debugPrint("LIST OF MESSAGE ${newMsg.toString()}");
                  },
                  focusNode: _focusNode,
                  textStyle: textStyle,
                  msgController: _msgController),
            ],
          ),
        ));
  }

  void _sendMessageToBloc(BuildContext context, msg) {
    context.read<MessagesBloc>().add(MessagesEvent.sendMessage(message: msg));
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