import 'package:kindergarten_online/features/profile/data/data_sources/remote_profile_source.dart';
import 'package:kindergarten_online/features/profile/data/dto/edit_profile_dto.dart';
import 'package:kindergarten_online/features/profile/domain/repositories/edit_profile_rep.dart';

class EditProfileImpl implements EditProfileRep {
  final RemoteProfileSource _remoteProfileSource;
  EditProfileImpl(this._remoteProfileSource);

  @override
  Future<void> editProfile({EditProfileDto? entity}) async {
    // try {
    //   final httpResponse =
    //       await _remoteProfileSource.editProfile(entity: entity);
    //   if (httpResponse.response.statusCode == HttpStatus.ok) {
    //     return DataSuccess(httpResponse.data);
    //   } else {
    //     return DataFailed(
    //         message: DioException(
    //             requestOptions: httpResponse.response.requestOptions));
    //   }
    // } on DioException catch (e) {
    //   return DataFailed(message: e);
    // }
    _remoteProfileSource.editProfile(entity: entity);
  }
}
