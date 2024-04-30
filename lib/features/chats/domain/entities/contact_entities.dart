import 'package:equatable/equatable.dart';

class ContactEntity with EquatableMixin {
  final int? count;
  final List<ContactResultsEntity>? results;
  const ContactEntity({this.count, this.results});

  @override
  List<Object?> get props => [count, results];
}

class ContactResultsEntity with EquatableMixin {
  final int? id;
  final String? phone;
  final String? firstName;
  final String? lastName;
  final String? avatar;
  final List<ContactChildrensEntity>? childrens;

  const ContactResultsEntity(
      {this.id,
      this.phone,
      this.firstName,
      this.lastName,
      this.childrens,
      this.avatar});

  @override
  List<Object?> get props =>
      [id, phone, firstName, lastName, childrens, avatar];
}

class ContactChildrensEntity with EquatableMixin {
  final int? id;
  final String? firstName;
  final String? lastName;
  final ChildrensGroupEntity? group;

  const ContactChildrensEntity(
      {this.id, this.firstName, this.lastName, this.group});

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        group,
      ];
}

class ChildrensGroupEntity with EquatableMixin {
  final int? id;
  final String? name;
  final int? kindergarten;

  const ChildrensGroupEntity({
    this.id,
    this.name,
    this.kindergarten,
  });

  @override
  List<Object?> get props => [id, name, kindergarten];
}
