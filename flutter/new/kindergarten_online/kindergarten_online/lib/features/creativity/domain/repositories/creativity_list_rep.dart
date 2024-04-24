import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/creativity/domain/entities/creativity_list_entity.dart';

abstract interface class CreativityListRep {
  Future<DataState<CreativityListEntity>> getCreativity();
}
