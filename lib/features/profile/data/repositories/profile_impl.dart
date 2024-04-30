import 'dart:io';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kindergarten_online/core/config/settings/dio_exception_handler.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/profile/data/data_sources/remote_profile_source.dart';
import 'package:kindergarten_online/features/profile/data/mappers/profile_mapper.dart';
import 'package:kindergarten_online/features/profile/domain/entities/profile_entity.dart';
import 'package:kindergarten_online/features/profile/domain/repositories/profile_rep.dart';

class ProfileImpl implements ProfileRep {
  final RemoteProfileSource _remoteProfile;
  ProfileImpl(this._remoteProfile);
  @override
  Future<DataState<ProfileEntity>> getProfile() async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;

    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }

    try {
      final httpResponse = await _remoteProfile.getProfile();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.toEntity());
      } else {
        return DataFailed(
            message: ErrorHandler.handle(DioException(
                    requestOptions: httpResponse.response.requestOptions,
                    type: DioExceptionType.badResponse,
                    response: httpResponse.response,
                    error: httpResponse.response.statusMessage))
                .failure
                .message);
      }
    } on DioException catch (e) {
      return DataFailed(message: ErrorHandler.handle(e).failure.message);
    }
  }
}
