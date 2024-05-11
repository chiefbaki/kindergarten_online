// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_dto.g.dart';

@JsonSerializable()
class ContactDto {
  final int count;
  final List<ContactResultsDto> results;
  ContactDto({required this.count, required this.results});

  factory ContactDto.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoFromJson(json);
}

@JsonSerializable()
class ContactResultsDto {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "phone")
  final String phone;
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  @JsonKey(name: "avatar")
  final String? avatar;
  final List<ContactChildrensDto> childrens;
  ContactResultsDto(
      {required this.id,
      required this.phone,
      required this.firstName,
      required this.lastName,
      required this.childrens,
      this.avatar});
  factory ContactResultsDto.fromJson(Map<String, dynamic> json) =>
      _$ContactResultsDtoFromJson(json);
}

@JsonSerializable()
class ContactChildrensDto {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  @JsonKey(name: "group")
  final ChildrensGroupDto group;
  ContactChildrensDto({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.group,
  });
  factory ContactChildrensDto.fromJson(Map<String, dynamic> json) =>
      _$ContactChildrensDtoFromJson(json);
}

@JsonSerializable()
class ChildrensGroupDto {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "kindergarten")
  final int kindergarten;
  ChildrensGroupDto({
    required this.id,
    required this.name,
    required this.kindergarten,
  });
  factory ChildrensGroupDto.fromJson(Map<String, dynamic> json) =>
      _$ChildrensGroupDtoFromJson(json);
}
