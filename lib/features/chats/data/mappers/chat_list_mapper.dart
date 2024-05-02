import 'package:kindergarten_online/features/chats/data/dto/chat_list_dto.dart';
import 'package:kindergarten_online/features/chats/domain/entities/req/chat_list_entity.dart';

extension ToEntityExt on ChatListDto {
  ChatListEntity toEntity() => ChatListEntity(
        id: id,
        firstName: firstName,
        lastName: lastName,
      );
}
