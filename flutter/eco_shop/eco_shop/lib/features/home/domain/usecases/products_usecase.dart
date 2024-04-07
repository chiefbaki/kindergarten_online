import 'package:eco_shop/features/home/data/models/products_dto.dart';
import 'package:eco_shop/features/home/domain/repositories/products_rep.dart';

class ProductsUseCase {
  final ProductsRep _repository;
  ProductsUseCase({
    required ProductsRep repository,
  }) : _repository = repository;

  Future<List<ProductsDto>> call(String? byCategory, String? byName) async {
    return _repository.getProducts(byCategory, byName);
  }
}
