// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatListDto _$ChatListDtoFromJson(Map<String, dynamic> json) => ChatListDto(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
    );

Map<String, dynamic> _$ChatListDtoToJson(ChatListDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
