import 'package:kindergarten_online/features/profile/data/dto/profile_dto.dart';
import 'package:kindergarten_online/features/profile/domain/entities/profile_entity.dart';

extension ToEntityExt on ProfileDto {
  ProfileEntity toEntity() => ProfileEntity(
      id: id,
      phone: phone,
      patronymic: patronymic,
      firstName: firstName,
      lastName: lastName);
}

extension FromEntityExt on ProfileEntity {
  ProfileDto toEntity() => ProfileDto(
      id: id ?? 0,
      phone: phone ?? "",
      patronymic: patronymic ?? "",
      firstName: firstName ?? "",
      lastName: lastName ?? "",
      avatar: avatar ?? "");
}
