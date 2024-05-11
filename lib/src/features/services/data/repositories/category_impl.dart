import 'dart:io';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kindergarten_online/src/core/config/settings/dio_exception_handler.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/services/data/data_sources/remote/remote_services_data.dart';
import 'package:kindergarten_online/src/features/services/data/mappers/category_mapper.dart';
import 'package:kindergarten_online/src/features/services/data/mappers/product_mapper.dart';
import 'package:kindergarten_online/src/features/services/domain/entities/category_entity.dart';
import 'package:kindergarten_online/src/features/services/domain/entities/product_entity.dart';
import 'package:kindergarten_online/src/features/services/domain/repositories/category_rep.dart';

class CategoryImpl implements CategoryRep {
  final RemoteServicesData _remoteServicesData;

  CategoryImpl(this._remoteServicesData);

  @override
  Future<DataState<CategoryEntity>> getCategory() async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;

    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }
    try {
      final httpResponse = await _remoteServicesData.getCategory();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.toEntity());
      } else {
        return DataFailed(
            message: ErrorHandler.handle(DioException(
                    requestOptions: httpResponse.response.requestOptions,
                    error: httpResponse.response.statusMessage,
                    response: httpResponse.response,
                    type: DioExceptionType.badResponse))
                .failure
                .message);
      }
    } on DioException catch (e) {
      return DataFailed(message: ErrorHandler.handle(e).failure.message);
    }
  }

  @override
  Future<DataState<ProductEntity>> getProduct({required String query}) async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;
    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }
    try {
      final httpResponse = await _remoteServicesData.getProduct(query: query);
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
