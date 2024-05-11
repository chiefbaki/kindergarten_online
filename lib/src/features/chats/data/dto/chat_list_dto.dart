import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_list_dto.g.dart';

@JsonSerializable()
class ChatListDto {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  // @JsonKey(name: "avatar")
  // final String? avatar;
  ChatListDto(
      {required this.id,
      required this.firstName,
      required this.lastName,
      });

  factory ChatListDto.fromJson(Map<String, dynamic> json) =>
      _$ChatListDtoFromJson(json);
}
