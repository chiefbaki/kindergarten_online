import 'package:dio/dio.dart';
import 'package:kindergarten_online/core/config/constants/api_urls.dart';
import 'package:kindergarten_online/features/profile/data/dto/edit_profile_dto.dart';
import 'package:kindergarten_online/features/profile/data/dto/profile_dto.dart';
import 'package:retrofit/dio.dart';

class RemoteProfileSource {
  final Dio _dio;
  RemoteProfileSource(this._dio);

  Future<HttpResponse<ProfileDto>> getProfile() async {
    final Response response = await _dio.get(
      ApiUrls.profile,
    );
    final value = ProfileDto.fromJson(response.data);
    final httpResponse = HttpResponse(value, response);
    return httpResponse;
  }

  Future<void> editProfile({required EditProfileDto entity}) async {
    await _dio.put(ApiUrls.editProfile,
        data: EditProfileDto(
                firstName: entity.firstName,
                lastName: entity.lastName,
                patronymic: entity.patronymic,
                )
            .toJson());
  }
}
