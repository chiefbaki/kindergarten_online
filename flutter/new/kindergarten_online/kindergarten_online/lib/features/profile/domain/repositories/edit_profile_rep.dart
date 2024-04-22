import 'package:kindergarten_online/features/profile/data/dto/edit_profile_dto.dart';

abstract interface class EditProfileRep {
  Future<void> editProfile({EditProfileDto entity});
}
