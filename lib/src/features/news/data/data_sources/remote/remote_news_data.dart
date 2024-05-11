import 'package:dio/dio.dart';
import 'package:kindergarten_online/src/features/news/data/remote/dto/news_dto.dart';
import 'package:retrofit/dio.dart';

class RemoteNewsData {
  final Dio _dio;
  RemoteNewsData(this._dio);

  Future<HttpResponse<NewsDto>> getNews() async {
    final Response response = await _dio.get("news/list/");
    final value = NewsDto.fromJson(response.data);
    print(value.results[1].content);
    return HttpResponse(value, response);
  }
}
