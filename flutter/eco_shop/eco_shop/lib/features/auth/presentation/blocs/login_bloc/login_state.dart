part of 'login_bloc.dart';

sealed class LoginState extends Equatable {}

final class LoginInitial extends LoginState {
  @override
  List<Object?> get props => [];
}

final class LoginLoading extends LoginState {
  @override
  List<Object?> get props => [];
}

final class LoginSuccess extends LoginState {
  final LoginResponseDto loginResponse;

  LoginSuccess({required this.loginResponse});

  @override
  List<Object?> get props => [loginResponse];
}

final class LoginFailure extends LoginState {
  final String error;
  LoginFailure({required this.error});

  @override
  List<Object?> get props => [error];
}
