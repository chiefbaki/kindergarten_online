import 'package:freezed_annotation/freezed_annotation.dart';

part "products_dto.freezed.dart";
part "products_dto.g.dart";

@freezed
class ProductsDto with _$ProductsDto {
  const ProductsDto._();
  const factory ProductsDto(
      {required int id,
      required String name,
      required String imageUrl,
      required String description,
      required String category,
      required int price,
      required int quantity}) = _ProductsDto;

  factory ProductsDto.fromJson(Map<String, dynamic> json) =>
      _$ProductsDtoFromJson(json);
}
