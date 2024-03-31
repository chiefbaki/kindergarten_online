// part of 'login_bloc.dart';

// sealed class LoginEvent extends Equatable {}

// class GetLogin extends LoginEvent {
//   final String username;
//   final String password;
//   GetLogin(
//       {required this.password, required this.username});
//   @override
//   List<Object?> get props => [username, password];
// }

import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(
      {required String email, required String password}) = GetLogin;
}
