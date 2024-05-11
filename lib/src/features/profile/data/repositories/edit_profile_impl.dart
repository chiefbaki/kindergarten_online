import 'package:kindergarten_online/src/features/profile/data/data_sources/remote_profile_source.dart';
import 'package:kindergarten_online/src/features/profile/data/mappers/edit_profile_mapper.dart';
import 'package:kindergarten_online/src/features/profile/domain/entities/edit_profile_entity.dart';
import 'package:kindergarten_online/src/features/profile/domain/repositories/edit_profile_rep.dart';

class EditProfileImpl implements EditProfileRep {
  final RemoteProfileSource _remoteProfileSource;
  EditProfileImpl(this._remoteProfileSource);

  @override
  Future<void> editProfile({required EditProfileEntity entity}) async {
    _remoteProfileSource.editProfile(entity: entity.fromEntity());
  }
}
