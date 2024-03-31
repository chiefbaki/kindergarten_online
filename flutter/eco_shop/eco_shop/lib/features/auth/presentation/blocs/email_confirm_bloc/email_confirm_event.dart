// part of 'email_confirm_bloc.dart';

// sealed class EmailConfirmEvent extends Equatable {

// }

// class GetConfirm extends EmailConfirmEvent {
//   final String? code;
//   GetConfirm({this.code});

//   @override
//   List<Object?> get props => [code];
// }


import 'package:freezed_annotation/freezed_annotation.dart';
part "email_confirm_event.freezed.dart";

@freezed
class EmailConfirmEvent with _$EmailConfirmEvent {
  const factory EmailConfirmEvent.confirm({required String? code}) = GetConfirm;
}
