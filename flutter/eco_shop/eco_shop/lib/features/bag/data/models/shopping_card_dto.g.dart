// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoppingCardImpl _$$ShoppingCardImplFromJson(Map<String, dynamic> json) =>
    _$ShoppingCardImpl(
      titles:
          (json['titles'] as List<dynamic>).map((e) => e as String).toList(),
      prices: (json['prices'] as List<dynamic>).map((e) => e as int).toList(),
      quantities:
          (json['quantities'] as List<dynamic>).map((e) => e as int).toList(),
      imagePaths: (json['imagePaths'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sum: json['sum'] as int,
      delivery: json['delivery'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$ShoppingCardImplToJson(_$ShoppingCardImpl instance) =>
    <String, dynamic>{
      'titles': instance.titles,
      'prices': instance.prices,
      'quantities': instance.quantities,
      'imagePaths': instance.imagePaths,
      'sum': instance.sum,
      'delivery': instance.delivery,
      'total': instance.total,
    };
