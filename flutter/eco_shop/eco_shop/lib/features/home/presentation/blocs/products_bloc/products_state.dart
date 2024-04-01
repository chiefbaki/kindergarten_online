import 'package:eco_shop/features/home/data/models/products_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState{
  const factory ProductsState.inital() = ProductsInitial;
  const factory ProductsState.loading() = ProductsLoading;
  const factory ProductsState.success({required List<ProductsDto> products}) = ProductsSuccess;
  const factory ProductsState.failure({required String error}) = ProductsFailure;
}