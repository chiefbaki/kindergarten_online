import 'dart:io';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kindergarten_online/core/config/settings/dio_exception_handler.dart';
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
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;

    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }

    try {
      final httpResponse = await _remoteNewsData.getNews();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.toEntity());
      } else {
        return DataFailed(
            message: ErrorHandler.handle(DioException(
                    requestOptions: httpResponse.response.requestOptions,
                    type: DioExceptionType.badResponse,
                    error: httpResponse.response.statusMessage,
                    response: httpResponse.response))
                .failure
                .message);
      }
    } on DioException catch (e) {
      return DataFailed(message: ErrorHandler.handle(e).failure.message);
    }
  }
}
