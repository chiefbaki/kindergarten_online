// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) => ContactDto(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ContactResultsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContactDtoToJson(ContactDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };

ContactResultsDto _$ContactResultsDtoFromJson(Map<String, dynamic> json) =>
    ContactResultsDto(
      id: json['id'] as int,
      phone: json['phone'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      childrens: (json['childrens'] as List<dynamic>)
          .map((e) => ContactChildrensDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$ContactResultsDtoToJson(ContactResultsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
      'childrens': instance.childrens,
    };

ContactChildrensDto _$ContactChildrensDtoFromJson(Map<String, dynamic> json) =>
    ContactChildrensDto(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      group: ChildrensGroupDto.fromJson(json['group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactChildrensDtoToJson(
        ContactChildrensDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'group': instance.group,
    };

ChildrensGroupDto _$ChildrensGroupDtoFromJson(Map<String, dynamic> json) =>
    ChildrensGroupDto(
      id: json['id'] as int,
      name: json['name'] as String,
      kindergarten: json['kindergarten'] as int,
    );

Map<String, dynamic> _$ChildrensGroupDtoToJson(ChildrensGroupDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kindergarten': instance.kindergarten,
    };
