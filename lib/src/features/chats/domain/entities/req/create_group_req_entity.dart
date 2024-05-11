import 'package:equatable/equatable.dart';

class CreateGroupReqEntity with EquatableMixin {
  final String? name;
  final List<int>? members;
  const CreateGroupReqEntity({this.name, this.members});

  @override
  List<Object?> get props => [name, members];
}
