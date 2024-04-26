import 'package:kindergarten_online/features/profile/data/dto/edit_profile_dto.dart';
import 'package:kindergarten_online/features/profile/domain/entities/edit_profile_entity.dart';

extension ToEntityExt on EditProfileDto {
  EditProfileEntity toEntity() => EditProfileEntity(
        firstName: firstName,
        lastName: lastName,
        patronymic: patronymic,
      );
}

extension FromEntityExt on EditProfileEntity {
  EditProfileDto fromEntity() => EditProfileDto(
        firstName: firstName ?? "",
        lastName: lastName ?? "",
        patronymic: patronymic ?? "",
      );
}
