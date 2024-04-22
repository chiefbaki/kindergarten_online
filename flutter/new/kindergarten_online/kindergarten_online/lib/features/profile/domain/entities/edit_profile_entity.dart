// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class EditProfileEntity extends Equatable {
  final String? name;
  final String? lastName;
  final String? patronymic;
  final String? ava;
  const EditProfileEntity(
      {this.name, this.lastName, this.patronymic, this.ava});
  @override
  List<Object?> get props => throw UnimplementedError();
}
