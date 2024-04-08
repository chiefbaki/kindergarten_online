part of 'basket_add_bloc.dart';

@freezed
class BasketAddState with _$BasketAddState {
  const factory BasketAddState.initial() = _Initial;
  const factory BasketAddState.loading() = _Loading;
  const factory BasketAddState.success() = _Success;
  const factory BasketAddState.failure({required String error}) = _Failure;
}
