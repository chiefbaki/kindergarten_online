// // ignore_for_file: public_member_api_docs, sort_constructors_first
// part of 'register_bloc.dart';

// @immutable
// sealed class RegisterEvent extends Equatable {}

// class GetRegister extends RegisterEvent {
//   final String email;
//   final String password;
//   GetRegister({
//     required this.email,
//     required this.password,
//   });
//   @override
//   List<Object?> get props => [email, password];
// }

import "package:freezed_annotation/freezed_annotation.dart";
part "register_event.freezed.dart";

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register(
      {required String email, required String password, required String username}) = GetRegister;
}
