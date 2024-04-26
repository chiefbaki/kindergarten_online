import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class ResetCodeDto {
  final int code;
  const ResetCodeDto({required this.code});

  factory ResetCodeDto.fromJson(Map<String, dynamic> json) =>
      ResetCodeDto(code: json["code"]);
}
