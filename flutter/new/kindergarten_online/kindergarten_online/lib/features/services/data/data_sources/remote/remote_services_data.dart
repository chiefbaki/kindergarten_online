import 'package:dio/dio.dart';
import 'package:kindergarten_online/core/config/constants/api_urls.dart';
import 'package:kindergarten_online/features/services/data/dto/category_dto.dart';
import 'package:retrofit/dio.dart';

class RemoteServicesData {
  final Dio _dio;
  RemoteServicesData(this._dio);

  Future<HttpResponse<CategoryDto>> getCategory() async {
    final Response response = await _dio.get(ApiUrls.serviceCategory);
    final data = CategoryDto.fromJson(response.data);
    return HttpResponse(data, response);
  }
}
