// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => ProfileDto(
      id: json['id'] as int,
      phone: json['phone'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      patronymic: json['patronymic'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$ProfileDtoToJson(ProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'patronymic': instance.patronymic,
      'avatar': instance.avatar,
    };
