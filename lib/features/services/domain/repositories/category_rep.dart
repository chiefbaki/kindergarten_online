import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/services/domain/entities/category_entity.dart';
import 'package:kindergarten_online/features/services/domain/entities/product_entity.dart';

abstract interface class CategoryRep {
  Future<DataState<CategoryEntity>> getCategory();
  Future<DataState<ProductEntity>> getProduct();
}