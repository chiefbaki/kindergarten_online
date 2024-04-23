import 'package:kindergarten_online/features/news/data/remote/dto/news_dto.dart';
import 'package:kindergarten_online/features/news/domain/entities/news_entity.dart';

extension ToEntityExt on NewsDto {
  NewsEntity toEntity() => NewsEntity(
        count: count,
        results: results.map((e) => e.toEntity()).toList(),
      );
}

extension ToEntityResult on Results {
  ResultsEntity toEntity() => ResultsEntity(
      id: id,
      title: title,
      content: content,
      timestamp: timeStamp,
      images: images.map((e) => e.toEntity()).toList());
}

extension ToEntityImage on Images {
  ImagesEntity toEntity() => ImagesEntity(id: id, img: img);
}
