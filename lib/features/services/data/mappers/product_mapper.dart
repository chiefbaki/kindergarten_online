import 'package:kindergarten_online/features/services/data/dto/product_dto.dart';
import 'package:kindergarten_online/features/services/domain/entities/product_entity.dart';

extension ToEntityExt on ProductDto {
  ProductEntity toEntity() => ProductEntity(
      count: count, results: result.map((e) => e.toEntity()).toList());
}

extension ItemsToEntityExt on ProductResultDto {
  ProductResultEntity toEntity() => ProductResultEntity(
      id: id,
      name: name,
      description: description,
      price: price,
      address: address,
      url: url,
      images: images.map((e) => e.toEntity()).toList());
}

extension ImagesToEntityExt on ProductImagesDto {
  ProductImagesEntity toEntity() => ProductImagesEntity(id: id, img: img);
}
