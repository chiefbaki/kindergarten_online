import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_add_dto.freezed.dart';
part 'basket_add_dto.g.dart';

@freezed
class BasketAddDto with _$BasketAddDto {
  const BasketAddDto._();
  const factory BasketAddDto({required int productId, required int quantity}) =
      _BasketAddDto;

  factory BasketAddDto.fromJson(Map<String, dynamic> json) =>
      _$BasketAddDtoFromJson(json);
}
