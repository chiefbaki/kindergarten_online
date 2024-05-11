// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => CategoryDto(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => CategoryResultDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryDtoToJson(CategoryDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };

CategoryResultDto _$CategoryResultDtoFromJson(Map<String, dynamic> json) =>
    CategoryResultDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoryResultDtoToJson(CategoryResultDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
