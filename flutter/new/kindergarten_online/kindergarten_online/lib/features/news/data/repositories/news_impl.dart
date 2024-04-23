import 'dart:io';
import 'package:dio/dio.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/news/data/data_sources/remote/remote_news_data.dart';
import 'package:kindergarten_online/features/news/data/mappers/news_mapper.dart';
import 'package:kindergarten_online/features/news/domain/entities/news_entity.dart';
import 'package:kindergarten_online/features/news/domain/repositories/news_rep.dart';

class NewsImpl implements NewsRep {
  final RemoteNewsData _remoteNewsData;
  NewsImpl(this._remoteNewsData);
  @override
  Future<DataState<NewsEntity>> getNews() async {
    try {
      final httpResponse = await _remoteNewsData.getNews();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.toEntity());
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
