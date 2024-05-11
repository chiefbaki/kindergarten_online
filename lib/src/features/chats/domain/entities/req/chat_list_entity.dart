// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ChatListEntity with EquatableMixin {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? avatar;
  ChatListEntity({
    this.id,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  @override
  List<Object?> get props => [id, firstName, lastName, avatar];
}
