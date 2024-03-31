import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final String email;
  final String password;

  const RegisterEntity({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email,password];
}
