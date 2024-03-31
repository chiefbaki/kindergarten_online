// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:eco_shop/features/auth/domain/entities/login_entity.dart';

class LoginDto extends LoginEntity {
  
  const LoginDto(
      {required super.email, required super.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{

      'email': email,
      'password': password,
    };
  }

  String toJson() => json.encode(toMap());


}
