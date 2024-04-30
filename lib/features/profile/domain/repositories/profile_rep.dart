import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/profile/domain/entities/profile_entity.dart';

abstract interface class ProfileRep {
  Future<DataState<ProfileEntity>> getProfile();
}
