// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['count', 'results'],
  );
  return ProductDto(
    count: (json['count'] as num).toInt(),
    results: (json['results'] as List<dynamic>)
        .map((e) => ProductResultDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };

ProductResultDto _$ProductResultDtoFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'description',
      'price',
      'url',
      'address',
      'images'
    ],
  );
  return ProductResultDto(
    id: (json['id'] as num).toInt(),
    name: json['name'] as String,
    description: json['description'] as String,
    price: json['price'] as String,
    url: json['url'] as String,
    images: (json['images'] as List<dynamic>)
        .map((e) => ProductImagesDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$ProductResultDtoToJson(ProductResultDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'url': instance.url,
      'address': instance.address,
      'images': instance.images,
    };

ProductImagesDto _$ProductImagesDtoFromJson(Map<String, dynamic> json) =>
    ProductImagesDto(
      id: (json['id'] as num).toInt(),
      img: json['img'] as String,
    );

Map<String, dynamic> _$ProductImagesDtoToJson(ProductImagesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
    };
