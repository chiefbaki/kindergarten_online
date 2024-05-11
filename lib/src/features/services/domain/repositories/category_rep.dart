import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/services/domain/entities/category_entity.dart';
import 'package:kindergarten_online/src/features/services/domain/entities/product_entity.dart';

abstract interface class CategoryRep {
  Future<DataState<CategoryEntity>> getCategory();
  Future<DataState<ProductEntity>> getProduct({required String query});
}
