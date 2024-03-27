part of 'auth_bloc.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterSuccess extends RegisterState {
  final Map<String, dynamic> success;
  RegisterSuccess({required this.success});
}

final class RegisterError extends RegisterState {
  final String error;
  RegisterError({required this.error});
}
