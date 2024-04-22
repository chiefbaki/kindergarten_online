import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final int? id;
  final String? phone;
  final String? firstName;
  final String? lastName;
  final String? patronymic;
  const ProfileEntity(
      {this.id, this.phone, this.firstName, this.lastName, this.patronymic});

  @override
  List<Object?> get props => [id, phone, firstName, lastName, patronymic];
}
