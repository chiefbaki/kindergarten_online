// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessagesListDto _$ChatMessagesListDtoFromJson(Map<String, dynamic> json) =>
    ChatMessagesListDto(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatMessagesListDtoToJson(
        ChatMessagesListDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };

ResultsDto _$ResultsDtoFromJson(Map<String, dynamic> json) => ResultsDto(
      id: (json['id'] as num).toInt(),
      sender: SenderDto.fromJson(json['sender'] as Map<String, dynamic>),
      recipient:
          RecipientDto.fromJson(json['recipient'] as Map<String, dynamic>),
      room: RoomDto.fromJson(json['room'] as Map<String, dynamic>),
      content: json['content'] as String,
      timestamp: json['timestamp'] as String,
      modified: json['modified'] as String,
    );

Map<String, dynamic> _$ResultsDtoToJson(ResultsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'recipient': instance.recipient,
      'room': instance.room,
      'content': instance.content,
      'timestamp': instance.timestamp,
      'modified': instance.modified,
    };

SenderDto _$SenderDtoFromJson(Map<String, dynamic> json) => SenderDto(
      id: (json['id'] as num).toInt(),
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$SenderDtoToJson(SenderDto instance) => <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
    };

RecipientDto _$RecipientDtoFromJson(Map<String, dynamic> json) => RecipientDto(
      id: (json['id'] as num).toInt(),
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$RecipientDtoToJson(RecipientDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
    };

RoomDto _$RoomDtoFromJson(Map<String, dynamic> json) => RoomDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$RoomDtoToJson(RoomDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
