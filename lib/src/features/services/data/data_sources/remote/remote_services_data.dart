import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kindergarten_online/src/core/config/constants/api_urls.dart';
import 'package:kindergarten_online/src/features/services/data/dto/category_dto.dart';
import 'package:kindergarten_online/src/features/services/data/dto/product_dto.dart';
import 'package:retrofit/dio.dart';

class RemoteServicesData {
  final Dio _dio;
  RemoteServicesData(this._dio);

  Future<HttpResponse<CategoryDto>> getCategory() async {
    final Response response = await _dio.get(ApiUrls.serviceCategory);
    final data = CategoryDto.fromJson(response.data);
    return HttpResponse(data, response);
  }

  Future<HttpResponse<ProductDto>> getProduct({required String query}) async {
    final path = dotenv.env["BY_CATEGORY"];
    final Response response =
        await _dio.get("$path$query");
    final data = ProductDto.fromJson(response.data);
    return HttpResponse(data, response);
  }
}