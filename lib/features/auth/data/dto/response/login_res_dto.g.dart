// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_res_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResDto _$LoginResDtoFromJson(Map<String, dynamic> json) => LoginResDto(
      refresh: json['refresh'] as String,
      access: json['access'] as String,
    );

Map<String, dynamic> _$LoginResDtoToJson(LoginResDto instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };
