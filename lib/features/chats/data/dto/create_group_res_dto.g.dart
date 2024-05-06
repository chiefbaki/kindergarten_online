// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_res_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGroupResDto _$CreateGroupResDtoFromJson(Map<String, dynamic> json) =>
    CreateGroupResDto(
      name: json['name'] as String,
      members: (json['members'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num).toInt(),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$CreateGroupResDtoToJson(CreateGroupResDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'members': instance.members,
      'avatar': instance.avatar,
    };
