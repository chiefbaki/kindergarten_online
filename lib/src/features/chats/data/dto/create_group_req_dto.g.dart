// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_req_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGroupReqDto _$CreateGroupReqDtoFromJson(Map<String, dynamic> json) =>
    CreateGroupReqDto(
      name: json['name'] as String,
      members: (json['members'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$CreateGroupReqDtoToJson(CreateGroupReqDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'members': instance.members,
    };
