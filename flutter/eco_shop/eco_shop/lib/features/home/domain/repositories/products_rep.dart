import 'package:eco_shop/features/home/data/models/products_dto.dart';

abstract interface class ProductsRep {
  Future<List<ProductsDto>> getProducts({String? byName, String? byCategory});
}
