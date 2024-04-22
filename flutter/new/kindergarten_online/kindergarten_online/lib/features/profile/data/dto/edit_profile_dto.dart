import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/profile/domain/entities/edit_profile_entity.dart';
part 'edit_profile_dto.g.dart';

@JsonSerializable()
class EditProfileDto extends EditProfileEntity {
  const EditProfileDto(
      {super.name, super.lastName, super.patronymic, super.ava});

  factory EditProfileDto.fromJson(Map<String, dynamic> json) =>
      _$EditProfileDtoFromJson(json);
  Map<String, dynamic> toJson() => _$EditProfileDtoToJson(this);
}
