import 'package:equatable/equatable.dart';

class CreativityListEntity extends Equatable {
  final int? count;
  final List<CreativityResultsEntity>? results;

  const CreativityListEntity({this.count, this.results});

  @override
  List<Object?> get props => [count, results];
}

class CreativityResultsEntity extends Equatable {
  final int? id;
  final String? name;
  final String? img;
  final int? children;

  const CreativityResultsEntity({this.id, this.name, this.img, this.children});

  @override
  List<Object?> get props => [id, name, img, children];
}
