part of 'by_category_bloc.dart';

@freezed
class ByCategoryEvent with _$ByCategoryEvent {
  const factory ByCategoryEvent.filter({required String query}) = _Filter;
}
