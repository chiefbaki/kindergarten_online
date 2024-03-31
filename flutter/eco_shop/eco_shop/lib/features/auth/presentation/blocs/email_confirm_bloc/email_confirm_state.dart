// part of 'email_confirm_bloc.dart';

// sealed class EmailConfirmState extends Equatable {}

// final class EmailConfirmInitial extends EmailConfirmState {
//   @override
//   List<Object?> get props => throw UnimplementedError();
// }

// final class EmailConfirmLoading extends EmailConfirmState {
//   @override
//   List<Object?> get props => throw UnimplementedError();
// }

// final class EmailConfirmSuccess extends EmailConfirmState {
//   final String message;
//   EmailConfirmSuccess({required this.message});
//   @override
//   List<Object?> get props => [message];
// }

// final class EmailConfirmFailure extends EmailConfirmState {
//   final String error;
//   EmailConfirmFailure({required this.error});
//   @override
//   List<Object?> get props => [error];
// }

import 'package:freezed_annotation/freezed_annotation.dart';
part "email_confirm_state.freezed.dart";

@freezed
class EmailConfirmState with _$EmailConfirmState{
  const factory EmailConfirmState.initial() = EmailConfirmInitial;
  const factory EmailConfirmState.loading() = EmailConfirmLoading;
  const factory EmailConfirmState.success({required String message}) =
      EmailConfirmSuccess;
  const factory EmailConfirmState.failure({required String error}) =
      EmailConfirmFailure;
}
