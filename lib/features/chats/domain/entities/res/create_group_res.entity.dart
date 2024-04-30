import 'package:equatable/equatable.dart';

class CreateGroupResEntity with EquatableMixin {
  final int? id;
  final String? avatar;
  final String? name;
  final List<int>? members;
  const CreateGroupResEntity({this.name, this.members, this.id, this.avatar});

  @override
  List<Object?> get props => [name, members, avatar, id];
}
