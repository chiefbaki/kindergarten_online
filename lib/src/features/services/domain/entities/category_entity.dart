import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int? count;
  final List<CategoryResultEntity>? result;
  const CategoryEntity({this.count, this.result});

  @override
  List<Object?> get props => [count, result];
}

class CategoryResultEntity extends Equatable {
  final int? id;
  final String? name;

  const CategoryResultEntity({this.id, this.name});

  @override
  List<Object?> get props => [id, name];
}