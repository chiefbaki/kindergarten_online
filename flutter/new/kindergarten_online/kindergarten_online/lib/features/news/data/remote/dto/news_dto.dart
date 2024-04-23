// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_dto.g.dart';

@JsonSerializable()
class NewsDto {
  
  @JsonKey(name: "count")
  final int count;
  @JsonKey(name: "results")
  final List<Results> results;
  NewsDto({required this.count, required this.results,});

  factory NewsDto.fromJson(Map<String, dynamic> json) =>
      _$NewsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NewsDtoToJson(this);
}

@JsonSerializable()
class Results {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "content")
  final String content;
  @JsonKey(name: "timestamp")
  final String timeStamp;
  @JsonKey(name: "images")
  final List<Images> images;
  Results({
    required this.id,
    required this.title,
    required this.content,
    required this.timeStamp,
    required this.images,
  });

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}

@JsonSerializable()
class Images {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "img")
  final String img;
  Images({
    required this.id,
    required this.img,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
