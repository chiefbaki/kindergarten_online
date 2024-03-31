// part of 'login_bloc.dart';

// sealed class LoginState extends Equatable {}

// final class LoginInitial extends LoginState {
//   @override
//   List<Object?> get props => [];
// }

// final class LoginLoading extends LoginState {
//   @override
//   List<Object?> get props => [];
// }

// final class LoginSuccess extends LoginState {
//   final LoginResponseDto loginResponse;

//   LoginSuccess({required this.loginResponse});

//   @override
//   List<Object?> get props => [loginResponse];
// }

// final class LoginFailure extends LoginState {
//   final String error;
//   LoginFailure({required this.error});

//   @override
//   List<Object?> get props => [error];
// }

import 'package:eco_shop/features/auth/data/models/login_response_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoadingInitial;
  const factory LoginState.loading() = _LoginLoading;
  const factory LoginState.success({required LoginResponseDto loginResponse}) =
      _LoadingSuccess;
  const factory LoginState.failure({required String error}) = _LoadingFailure;
}
