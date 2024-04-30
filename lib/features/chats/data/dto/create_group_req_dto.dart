import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_group_req_dto.g.dart';

@JsonSerializable()
class CreateGroupReqDto {
  final String name;
  final List<int> members;
  CreateGroupReqDto({required this.name, required this.members});

  factory CreateGroupReqDto.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupReqDtoFromJson(json);

  Map<String, dynamic> toJson(json) => _$CreateGroupReqDtoToJson(this);
}
