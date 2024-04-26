// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class EditProfileEntity extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? patronymic;
  final String? avatar;
  const EditProfileEntity(
      {this.firstName, this.lastName, this.patronymic, this.avatar});
  @override
  List<Object?> get props => throw UnimplementedError();
}
