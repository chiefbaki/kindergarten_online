import 'dart:io';

import 'package:dio/dio.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/profile/data/data_sources/remote_profile_source.dart';
import 'package:kindergarten_online/features/profile/data/dto/profile_dto.dart';
import 'package:kindergarten_online/features/profile/domain/repositories/profile_rep.dart';

class ProfileImpl implements ProfileRep {
  final RemoteProfileSource _remoteProfile;
  ProfileImpl(this._remoteProfile);
  @override
  Future<DataState<ProfileDto>> getProfile() async {
    try {
      final httpResponse = await _remoteProfile.getProfile();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
            message: DioException(
                requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(message: e);
    }
  }
}
