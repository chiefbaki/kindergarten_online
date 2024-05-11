import 'package:kindergarten_online/src/features/chats/data/dto/create_group_req_dto.dart';
import 'package:kindergarten_online/src/features/chats/data/dto/create_group_res_dto.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/req/create_group_req_entity.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/res/create_group_res.entity.dart';

extension ToEntityExt on CreateGroupReqDto {
  CreateGroupReqEntity toEntity() =>
      CreateGroupReqEntity(name: name, members: members);
}

extension FromEntityExt on CreateGroupResDto {
  CreateGroupResEntity fromEntity() => CreateGroupResEntity(
      name: name, avatar: avatar, members: members, id: id);
}
