import 'package:eco_shop/features/home/data/models/products_dto.dart';
import 'package:eco_shop/features/home/domain/repositories/products_rep.dart';
import 'package:eco_shop/features/home/domain/usecases/products_usecase.dart';

class ProductsImpl implements ProductsRep {
  final ProductsUseCase _useCase;
  ProductsImpl({required ProductsUseCase useCase}) : _useCase = useCase;
  @override
  Future<List<ProductsDto>> getProducts(
      {String? byName, String? byCategory}) async {
    return _useCase.getProducts(byName: byName, byCategory: byCategory);
  }
}
