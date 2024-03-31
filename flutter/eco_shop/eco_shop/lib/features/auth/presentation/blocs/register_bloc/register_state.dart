// part of 'register_bloc.dart';

// @immutable
// sealed class RegisterState extends Equatable {}

// final class RegisterInitial extends RegisterState {
//   @override
//   List<Object?> get props => throw UnimplementedError();
// }

// final class RegisterLoading extends RegisterState {
//   @override
//   List<Object?> get props => [];
// }

// final class RegisterSuccess extends RegisterState {
//   final Map<String, dynamic> success;
//   RegisterSuccess({required this.success});

//   @override
//   List<Object?> get props => [success];

//   RegisterSuccess copyWith({
//     Map<String, dynamic>? success,
//   }) {
//     return RegisterSuccess(
//       success: success ?? this.success,
//     );
//   }
// }

// final class RegisterError extends RegisterState {
//   final String error;
//   RegisterError({required this.error});

//   @override
//   List<Object?> get props => [];
// }


import 'package:freezed_annotation/freezed_annotation.dart';
part "register_state.freezed.dart";

@freezed
class RegisterState with _$RegisterState{
  const factory RegisterState.initial() = _RegisterInitial;
  const factory RegisterState.loading() = _RegisterLoading;
  const factory RegisterState.success({required Map<String, dynamic> success}) = _RegisterSuccess;
  const factory RegisterState.failure({required String error}) = _RegisterFailure;
}