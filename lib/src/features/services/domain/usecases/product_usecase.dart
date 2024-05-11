import 'package:kindergarten_online/src/core/usecase/usecase.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/services/domain/entities/product_entity.dart';
import 'package:kindergarten_online/src/features/services/domain/repositories/category_rep.dart';

class ProductUseCase implements UseCase<DataState<ProductEntity>, String> {
  final CategoryRep _categoryRep;

  ProductUseCase(this._categoryRep);

  @override
  Future<DataState<ProductEntity>> call({required String param}) async {
    return _categoryRep.getProduct(query: param);
  }
}
