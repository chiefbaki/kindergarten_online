// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_messages_list_dto.g.dart';

@JsonSerializable()
class ChatMessagesListDto {
  final int count;
  final List<ResultsDto> results;
  ChatMessagesListDto({required this.count, required this.results});

  factory ChatMessagesListDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesListDtoFromJson(json);
}

@JsonSerializable()
class ResultsDto {
  final int id;
  final SenderDto sender;
  final RecipientDto recipient;
  final RoomDto room;
  final String content;
  final String timestamp;
  final String modified;
  ResultsDto(
      {required this.id,
      required this.sender,
      required this.recipient,
      required this.room,
      required this.content,
      required this.timestamp,
      required this.modified});

  factory ResultsDto.fromJson(Map<String, dynamic> json) =>
      _$ResultsDtoFromJson(json);
}

@JsonSerializable()
class SenderDto {
  final int id;
  final String phone;

  SenderDto({required this.id, required this.phone});
  factory SenderDto.fromJson(Map<String, dynamic> json) =>
      _$SenderDtoFromJson(json);
}

@JsonSerializable()
class RecipientDto {
  final int id;
  final String phone;

  RecipientDto({required this.id, required this.phone});
  factory RecipientDto.fromJson(Map<String, dynamic> json) =>
      _$RecipientDtoFromJson(json);
}

@JsonSerializable()
class RoomDto {
  final int id;
  final String name;

  RoomDto({required this.id, required this.name});
  factory RoomDto.fromJson(Map<String, dynamic> json) =>
      _$RoomDtoFromJson(json);
}
