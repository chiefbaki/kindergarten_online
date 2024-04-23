// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDto _$NewsDtoFromJson(Map<String, dynamic> json) => NewsDto(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewsDtoToJson(NewsDto instance) => <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      timeStamp: json['timestamp'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'timestamp': instance.timeStamp,
      'images': instance.images,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      id: json['id'] as int,
      img: json['img'] as String,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
    };
