part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {}

class GetLogin extends LoginEvent {
  final String username;
  final String password;
  GetLogin(
      {required this.password, required this.username});
  @override
  List<Object?> get props => [username, password];
}
