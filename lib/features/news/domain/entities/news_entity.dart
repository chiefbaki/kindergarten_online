import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final int? count;
  final List<ResultsEntity>? results;
  const NewsEntity({this.results, this.count});
  @override
  List<Object?> get props => [results];
}

class ResultsEntity extends Equatable {
  final int? id;
  final String? title;
  final String? content;
  final String? timestamp;
  final List<ImagesEntity>? images;

  const ResultsEntity(
      {this.id, this.title, this.content, this.timestamp, this.images});

  @override
  List<Object?> get props => [id, title, timestamp, images];
}

class ImagesEntity extends Equatable {
  final int? id;
  final String? img;
  const ImagesEntity({this.id, this.img});

  @override
  List<Object?> get props => [id, img];
}
