import 'package:kindergarten_online/src/features/chats/data/dto/chat_list_dto.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/req/chat_list_entity.dart';

extension ToEntityExt on ChatListDto {
  ChatListEntity toEntity() => ChatListEntity(
        id: id,
        firstName: firstName,
        lastName: lastName,
      );
}
