import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/creativity/domain/entities/creativity_list_entity.dart';

abstract interface class CreativityListRep {
  Future<DataState<CreativityListEntity>> getCreativity();
  Future<DataState<CreativityListEntity>> searchCreativity(
      {required String query});
}
