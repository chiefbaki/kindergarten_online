import 'package:equatable/equatable.dart';

class LoginResponseEntity extends Equatable {
  final int id;
  final String username;
  final String email;
  final String accessToken;

  const LoginResponseEntity(
      {required this.id,
      required this.username,
      required this.email,
      required this.accessToken});

  @override
  List<Object?> get props => [id, email, username, accessToken];
}
