import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_card_dto.freezed.dart';
part 'shopping_card_dto.g.dart';

@freezed
class ShoppingCardDto with _$ShoppingCardDto {
  const factory ShoppingCardDto(
      {required List<String> titles,
      required List<int> prices,
      required List<int> quantities,
      required List<String> imagePaths,
      required int sum,
      required int delivery,
      required int total}) = _ShoppingCard;

  factory ShoppingCardDto.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCardDtoFromJson(json);
}
