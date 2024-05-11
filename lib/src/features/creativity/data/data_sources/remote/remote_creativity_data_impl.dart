import 'package:dio/dio.dart';
import 'package:kindergarten_online/src/features/creativity/data/dto/creativity_list_dto.dart';
import 'package:retrofit/dio.dart';

class RemoteCreativityData {
  final Dio _dio;

  RemoteCreativityData(this._dio);

  Future<HttpResponse<CreativityListDto>> getCreativity() async {
    final Response response = await _dio.get("management/creativity/list/");
    final data = CreativityListDto.fromJson(response.data);
    return HttpResponse(data, response);
  }

  Future<HttpResponse<CreativityListDto>> searchCreativity(
      {required String query}) async {
    final Response response = await _dio.get("management/creativity/search/",
        queryParameters: {"search": query});
    final data = CreativityListDto.fromJson(response.data);
    return HttpResponse(data, response);
  }
}
