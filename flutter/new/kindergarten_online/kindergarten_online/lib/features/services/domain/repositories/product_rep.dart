import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/services/domain/entities/product_entity.dart';

abstract interface class ProductRep {
  Future<DataState<ProductEntity>> getProduct();
}
