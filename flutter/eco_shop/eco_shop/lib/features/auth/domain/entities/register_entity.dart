import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final String email;
  final String username;
  final String phoneNumber;
  final String password;

  const RegisterEntity(
      {required this.email,
      required this.password,
      required this.phoneNumber,
      required this.username});

  @override
  List<Object?> get props => [email, username, phoneNumber, password];
}
