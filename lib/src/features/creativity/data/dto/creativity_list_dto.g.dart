// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creativity_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreativityListDto _$CreativityListDtoFromJson(Map<String, dynamic> json) =>
    CreativityListDto(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => CreativityResultsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreativityListDtoToJson(CreativityListDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };

CreativityResultsDto _$CreativityResultsDtoFromJson(
        Map<String, dynamic> json) =>
    CreativityResultsDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      img: json['image'] as String,
      children: (json['children'] as num).toInt(),
    );

Map<String, dynamic> _$CreativityResultsDtoToJson(
        CreativityResultsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.img,
      'children': instance.children,
    };
