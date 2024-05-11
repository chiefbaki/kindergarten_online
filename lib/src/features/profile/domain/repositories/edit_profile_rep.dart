import 'package:kindergarten_online/src/features/profile/domain/entities/edit_profile_entity.dart';

abstract interface class EditProfileRep {
  Future<void> editProfile({required EditProfileEntity entity});
}
