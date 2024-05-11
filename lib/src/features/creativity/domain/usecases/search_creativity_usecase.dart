import 'package:kindergarten_online/src/core/usecase/usecase.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/creativity/domain/entities/creativity_list_entity.dart';
import 'package:kindergarten_online/src/features/creativity/domain/repositories/creativity_list_rep.dart';

class SearchCreativityUseCase
    implements UseCase<DataState<CreativityListEntity>, String> {
  final CreativityListRep _repository;

  SearchCreativityUseCase(this._repository);

  @override
  Future<DataState<CreativityListEntity>> call({required String param}) async {
    return _repository.searchCreativity(query: param);
  }
}
