// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsDtoImpl _$$ProductsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductsDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      price: json['price'] as int,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$ProductsDtoImplToJson(_$ProductsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'category': instance.category,
      'price': instance.price,
      'quantity': instance.quantity,
    };
