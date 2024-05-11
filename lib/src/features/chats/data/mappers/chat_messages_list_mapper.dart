import 'package:kindergarten_online/src/features/chats/data/dto/chat_messages_list_dto.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/chat_messages_list_entity.dart';

extension ToEntityExt on ChatMessagesListDto {
  ChatMessagesListEntity toEntity() => ChatMessagesListEntity(
      count: count, results: results.map((e) => e.toEntity()).toList());
}

extension ToEntityExtRes on ResultsDto {
  ResultsEntity toEntity() => ResultsEntity(
      id: id,
      content: content,
      sender: sender.toEntity(),
      timestamp: timestamp,
      modified: modified,
      recipient: recipient.toEntity(),
      room: room.toEntity());
}

extension ToEntityExtSender on SenderDto {
  SenderEntity toEntity() => SenderEntity(id: id, phone: phone);
}

extension ToEntityExtRec on RecipientDto {
  RecipientEntity toEntity() => RecipientEntity(id: id, phone: phone);
}

extension ToEntityExtRoom on RoomDto {
  RoomEntity toEntity() => RoomEntity(id: id, name: name);
}
