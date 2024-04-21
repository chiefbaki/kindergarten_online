part of 'shopping_card_bloc.dart';

@freezed
class ShoppingCardEvent with _$ShoppingCardEvent {
  const factory ShoppingCardEvent.started() = _Started;
}