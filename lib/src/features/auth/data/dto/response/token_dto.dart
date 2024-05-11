import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_dto.g.dart';

@JsonSerializable()
class TokenDto {
  String? access;
  String? refresh;
  TokenDto({required this.refresh, required this.access});

  TokenDto.fromJson(Map<String, dynamic> json) {
    access = json["access"];
    refresh = json["refresh"];
  }
}
