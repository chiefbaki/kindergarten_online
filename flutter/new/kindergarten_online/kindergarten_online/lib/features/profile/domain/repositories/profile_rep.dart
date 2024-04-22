import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/profile/data/dto/profile_dto.dart';

abstract interface class ProfileRep {
  Future<DataState<ProfileDto>> getProfile();
}
