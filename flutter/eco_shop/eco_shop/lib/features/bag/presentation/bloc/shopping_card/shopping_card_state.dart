part of 'shopping_card_bloc.dart';

@freezed
class ShoppingCardState with _$ShoppingCardState {
  const factory ShoppingCardState.initial() = _Initial;
  const factory ShoppingCardState.loading() = _Loading;
  const factory ShoppingCardState.success({required ShoppingCardDto card}) =
      _Success;

  const factory ShoppingCardState.failure({required String error}) = _Failure;
}
