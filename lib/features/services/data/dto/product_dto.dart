// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDto {
  final int count;
  final List<ProductResultDto> result;
  ProductDto({
    required this.count,
    required this.result,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

@JsonSerializable()
class ProductResultDto {
  final int id;
  final String name;
  final String description;
  final String price;
  final String url;
  final String address;
  final List<ProductImagesDto> images;
  ProductResultDto(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.url,
      required this.images,
      required this.address});

  factory ProductResultDto.fromJson(Map<String, dynamic> json) =>
      _$ProductResultDtoFromJson(json);
}

@JsonSerializable()
class ProductImagesDto {
  final int id;
  final String img;
  ProductImagesDto({
    required this.id,
    required this.img,
  });

  factory ProductImagesDto.fromJson(Map<String, dynamic> json) =>
      _$ProductImagesDtoFromJson(json);
}
