import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.g.dart';

@JsonSerializable()
class ProfileDto {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "phone")
  final String phone;
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  @JsonKey(name: "patronymic")
  final String patronymic;
  @JsonKey(name: "avatar")
  final String? avatar;
  const ProfileDto(
      {required this.id,
      required this.phone,
      required this.firstName,
      required this.lastName,
      required this.patronymic,
      this.avatar});

  // Serializing data's
  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);
}
