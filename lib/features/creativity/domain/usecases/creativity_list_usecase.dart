import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/creativity/domain/entities/creativity_list_entity.dart';
import 'package:kindergarten_online/features/creativity/domain/repositories/creativity_list_rep.dart';

class CreativityUseCase
    implements UseCase<DataState<CreativityListEntity>, void> {
  final CreativityListRep _repository;

  CreativityUseCase(this._repository);

  @override
  Future<DataState<CreativityListEntity>> call({void param}) async {
    return _repository.getCreativity();
  }
}
