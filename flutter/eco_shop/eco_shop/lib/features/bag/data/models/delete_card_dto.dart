import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_card_dto.freezed.dart';
part 'delete_card_dto.g.dart';

@freezed
class DeleteCardDto with _$DeleteCardDto {
  const factory DeleteCardDto({required int productId, required int quantity}) =
      _DeleteCardDto;

  factory DeleteCardDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteCardDtoFromJson(json);
}
