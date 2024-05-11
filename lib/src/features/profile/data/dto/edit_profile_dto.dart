import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_profile_dto.g.dart';

@JsonSerializable()
class EditProfileDto {
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  @JsonKey(name: "patronymic")
  final String patronymic;
  
  const EditProfileDto(
      {required this.firstName,
      required this.lastName,
      required this.patronymic,
      });

  factory EditProfileDto.fromJson(Map<String, dynamic> json) =>
      _$EditProfileDtoFromJson(json);
  Map<String, dynamic> toJson() => _$EditProfileDtoToJson(this);
}
