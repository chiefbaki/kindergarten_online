// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_res_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGroupResDto _$CreateGroupResDtoFromJson(Map<String, dynamic> json) =>
    CreateGroupResDto(
      name: json['name'] as String,
      members: (json['members'] as List<dynamic>).map((e) => e as int).toList(),
      id: json['id'] as int,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$CreateGroupResDtoToJson(CreateGroupResDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'members': instance.members,
      'avatar': instance.avatar,
    };
