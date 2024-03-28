// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent extends Equatable {}

class GetRegister extends RegisterEvent {
  final String email;
  final String username;
  final String password;
  final String phoneNumber;
  GetRegister({
    required this.email,
    required this.username,
    required this.phoneNumber,
    required this.password,
  });
  @override
  List<Object?> get props => [email, username, phoneNumber, password];
}


