part of 'basket_add_bloc.dart';

@freezed
class BasketAddEvent with _$BasketAddEvent {
  const factory BasketAddEvent.started(
      {required int productId, required int quantity}) = _Started;
}
