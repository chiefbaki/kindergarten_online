import 'dart:convert';
import 'package:eco_shop/features/auth/domain/entities/login_response_entity.dart';

class LoginResponseDto extends LoginResponseEntity {
    const LoginResponseDto(
      {required super.id,
      required super.email,
      required super.username,
      required super.accessToken});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'accessToken': accessToken,
    };
  }

  factory LoginResponseDto.fromMap(Map<String, dynamic> map) {
    return LoginResponseDto(
      id: map['id'] ?? "",
      email: map['email'] ?? "",
      username: map['username'] ?? "",
      accessToken: map['accessToken'] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

}
