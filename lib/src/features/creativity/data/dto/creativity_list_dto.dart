import 'package:freezed_annotation/freezed_annotation.dart';

part 'creativity_list_dto.g.dart';

@JsonSerializable()
class CreativityListDto {
  @JsonKey(name: "count")
  final int count;
  @JsonKey(name: "results")
  final List<CreativityResultsDto> results;
  CreativityListDto({required this.count, required this.results});

  factory CreativityListDto.fromJson(Map<String, dynamic> json) =>
      _$CreativityListDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreativityListDtoToJson(this);
}

@JsonSerializable()
class CreativityResultsDto {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "image")
  final String img;
  @JsonKey(name: "children")
  final int children;


  CreativityResultsDto(
      {required this.id,
      required this.name,
      required this.img,
      required this.children});

  factory CreativityResultsDto.fromJson(Map<String, dynamic> json) =>
      _$CreativityResultsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreativityResultsDtoToJson(this);
}
