part of 'email_confirm_bloc.dart';

sealed class EmailConfirmState extends Equatable {}

final class EmailConfirmInitial extends EmailConfirmState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

final class EmailConfirmLoading extends EmailConfirmState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

final class EmailConfirmSuccess extends EmailConfirmState {
  final String message;
  EmailConfirmSuccess({required this.message});
  @override
  List<Object?> get props => [message];
}

final class EmailConfirmFailure extends EmailConfirmState {
  final String error;
  EmailConfirmFailure({required this.error});
  @override
  List<Object?> get props => [error];
}
