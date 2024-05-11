import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.g.dart';

@JsonSerializable()
class CategoryDto {
  @JsonKey(name: "count")
  final int count;
  final List<CategoryResultDto> results;
  CategoryDto({required this.count, required this.results});

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}

@JsonSerializable()
class CategoryResultDto {
  final int id;
  final String name;
  CategoryResultDto({required this.id, required this.name});

  factory CategoryResultDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryResultDtoFromJson(json);
}
