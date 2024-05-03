import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/domain/entities/chat_messages_list_entity.dart';
import 'package:kindergarten_online/features/chats/domain/entities/contact_entity.dart';
import 'package:kindergarten_online/features/chats/domain/entities/req/chat_list_entity.dart';
import 'package:kindergarten_online/features/chats/domain/entities/req/create_group_req_entity.dart';
import 'package:kindergarten_online/features/chats/domain/entities/res/create_group_res.entity.dart';

abstract interface class ChatRepository {
  Future<DataState<ContactEntity>> getContact({String? query});
  Future<DataState<CreateGroupResEntity>> createGroup(
      {required CreateGroupReqEntity entity});
  Future<DataState<List<ChatListEntity>>> getChatList({String? query});
  Future<DataState<ChatMessagesListEntity>> getMessages({String id});
}
