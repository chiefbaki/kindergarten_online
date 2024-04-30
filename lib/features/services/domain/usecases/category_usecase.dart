import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/services/domain/entities/category_entity.dart';
import 'package:kindergarten_online/features/services/domain/repositories/category_rep.dart';

class CategoryUseCase implements UseCase<DataState<CategoryEntity>, void> {
  final CategoryRep _repository;
  CategoryUseCase(this._repository);

  @override
  Future<DataState<CategoryEntity>> call({void param}) async {
    return _repository.getCategory();
  }
}
