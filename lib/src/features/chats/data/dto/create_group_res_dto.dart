import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_group_res_dto.g.dart';

@JsonSerializable()
class CreateGroupResDto {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "members")
  final List<int> members;
  @JsonKey(name: "avatar")
  final String? avatar;
  CreateGroupResDto(
      {required this.name,
      required this.members,
      required this.id,
      this.avatar});

  factory CreateGroupResDto.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupResDtoFromJson(json);
}
