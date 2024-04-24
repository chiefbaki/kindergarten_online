import 'package:dio/dio.dart';
import 'package:kindergarten_online/features/creativity/data/dto/creativity_list_dto.dart';
import 'package:retrofit/dio.dart';

class RemoteCreativityData {
  final Dio _dio;

  RemoteCreativityData(this._dio);

  Future<HttpResponse<CreativityListDto>> getCreativity() async {
    final Response response = await _dio.get("management/creativity/list/");
    final data = CreativityListDto.fromJson(response.data);
    return HttpResponse(data, response);
  }
}
