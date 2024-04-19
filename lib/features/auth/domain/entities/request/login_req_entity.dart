import 'package:equatable/equatable.dart';

class LoginReqEntity extends Equatable{
  final String phone;
  final String password;
  const LoginReqEntity({required this.phone, required this.password});
  
  @override
  List<Object?> get props => [
    phone,
    password
  ];
}
