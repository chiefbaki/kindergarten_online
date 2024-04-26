// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDto {
  @JsonKey(name: "count", required: true)
  final int count;
  @JsonKey(name: "results", required: true)
  final List<ProductResultDto> results;
  ProductDto({
    required this.count,
    required this.results,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

@JsonSerializable()
class ProductResultDto {
  @JsonKey(name: "id", required: true)
  final int id;
  @JsonKey(name: "name", required: true)
  final String name;
  @JsonKey(name: "description", required: true)
  final String description;
  @JsonKey(name: "price", required: true)
  final String price;
  @JsonKey(name: "url", required: true)
  final String url;
  @JsonKey(name: "address", required: true)
  final String address;
  @JsonKey(name: "images", required: true)
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
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "img")
  final String img;
  ProductImagesDto({
    required this.id,
    required this.img,
  });

  factory ProductImagesDto.fromJson(Map<String, dynamic> json) =>
      _$ProductImagesDtoFromJson(json);
}
