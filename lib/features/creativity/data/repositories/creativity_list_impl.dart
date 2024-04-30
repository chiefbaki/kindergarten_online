import 'dart:io';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kindergarten_online/core/config/settings/dio_exception_handler.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/creativity/data/data_sources/remote/remote_creativity_data_impl.dart';
import 'package:kindergarten_online/features/creativity/data/mappers/creativity_list_mapper.dart';
import 'package:kindergarten_online/features/creativity/domain/entities/creativity_list_entity.dart';
import 'package:kindergarten_online/features/creativity/domain/repositories/creativity_list_rep.dart';


class CreativityListImpl implements CreativityListRep {
  final RemoteCreativityData _creativityData;

  CreativityListImpl(this._creativityData);

  @override
  Future<DataState<CreativityListEntity>> getCreativity() async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;

    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }

    try {
      final httpResponse = await _creativityData.getCreativity();
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

  @override
  Future<DataState<CreativityListEntity>> searchCreativity(
      {required String query}) async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;

    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }

    try {
      final httpResponse = await _creativityData.searchCreativity(query: query);
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
