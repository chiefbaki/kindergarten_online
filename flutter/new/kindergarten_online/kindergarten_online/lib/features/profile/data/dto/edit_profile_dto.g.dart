// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditProfileDto _$EditProfileDtoFromJson(Map<String, dynamic> json) =>
    EditProfileDto(
      name: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      patronymic: json['patronymic'] as String?,
      ava: json['ava'] as String?,
    );

Map<String, dynamic> _$EditProfileDtoToJson(EditProfileDto instance) =>
    <String, dynamic>{
      'first_name': instance.name,
      'last_name': instance.lastName,
      'patronymic': instance.patronymic,
      'ava': instance.ava,
    };
