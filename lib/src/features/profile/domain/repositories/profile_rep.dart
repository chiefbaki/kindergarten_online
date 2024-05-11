import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/profile/domain/entities/profile_entity.dart';

abstract interface class ProfileRep {
  Future<DataState<ProfileEntity>> getProfile();
}
