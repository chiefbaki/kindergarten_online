// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:eco_shop/features/auth/domain/entities/register_entity.dart';

class RegisterDto extends RegisterEntity {

  const RegisterDto(
      {required super.email,
      required super.password,
      required super.phoneNumber,
      required super.username});

  Map<String, dynamic> tojson() {
    return <String, dynamic>{
      'email': email,
      'username': username,
      'phoneNumber': phoneNumber,
      'password': password,
    };
  }

  factory RegisterDto.fromJson(Map<String, dynamic> json){
    return RegisterDto(email: json["email"], password: json["password"], phoneNumber: json["phoneNumber"], username: json["username"]);
  }

  String toJson() => json.encode(tojson());

}
