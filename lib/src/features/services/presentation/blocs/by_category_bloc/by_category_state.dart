part of 'by_category_bloc.dart';

@freezed
class ByCategoryState with _$ByCategoryState {
  const factory ByCategoryState.initial() = _Initial;
  const factory ByCategoryState.loading() = _Loading;
  const factory ByCategoryState.success({required ProductEntity entity}) =
      _Success;
  const factory ByCategoryState.failure({required String error}) = _Failure;
}
