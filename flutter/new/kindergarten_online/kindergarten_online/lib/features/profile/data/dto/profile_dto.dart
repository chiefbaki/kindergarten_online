import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/profile/domain/entities/profile_entity.dart';

part 'profile_dto.g.dart';

@JsonSerializable()
class ProfileDto extends ProfileEntity {
  const ProfileDto(
      {super.id,
      super.phone,
      super.firstName,
      super.lastName,
      super.patronymic});

  // Serializing data's
  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);
}
