import 'package:dio/dio.dart';
import 'package:kindergarten_online/core/config/constants/network_constant.dart';
import 'package:kindergarten_online/core/utils/resources/dio_failure.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = _handleError(error);
    } else {
      failure = DataSource.defaultError.getFailure();
    }
  }
}


Failure _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectionTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.receiveTimeout.getFailure();
    case DioExceptionType.badResponse:

      // test todo 400, 401, 404
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) { 
        return Failure(
          error.response?.statusCode ?? 0,
          error.response.toString(),
        );
      } else {
        return DataSource.defaultError.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.cancel.getFailure();
    default:
      return DataSource.defaultError.getFailure();
  }
}

class ResponseCode {
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no data (no content)
  static const int badRequest = 400; // failure, API rejected request
  static const int unauthorised = 401; // failure, user is not authorised
  static const int forbidden = 403; // failure, API rejected request
  static const int internalServerError = 500; // failure, crash in server side
  static const int notFound = 404; // failure, not found

  // local status code
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaultError = -7;
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.success:
        return Failure(ResponseCode.success, NetworkConsts.success);
      case DataSource.noContent:
        return Failure(ResponseCode.noContent, NetworkConsts.success);
      case DataSource.badRequest:
        return Failure(
          ResponseCode.badRequest,
          NetworkConsts.strBadRequestError,
        );
      case DataSource.forbidden:
        return Failure(
          ResponseCode.forbidden,
          NetworkConsts.strForbiddenError,
        );
      case DataSource.unauthorised:
        return Failure(
          ResponseCode.unauthorised,
          NetworkConsts.strUnauthorizedError,
        );
      case DataSource.notFound:
        return Failure(ResponseCode.notFound, NetworkConsts.strNotFoundError);
      case DataSource.internalServerError:
        return Failure(
          ResponseCode.internalServerError,
          NetworkConsts.strInternalServerError,
        );
      case DataSource.connectionTimeout:
        return Failure(
          ResponseCode.connectTimeout,
          NetworkConsts.strTimeoutError,
        );
      case DataSource.cancel:
        return Failure(ResponseCode.cancel, NetworkConsts.strDefaultError);
      case DataSource.receiveTimeout:
        return Failure(
          ResponseCode.receiveTimeout,
          NetworkConsts.strTimeoutError,
        );
      case DataSource.sendTimeout:
        return Failure(
          ResponseCode.sendTimeout,
          NetworkConsts.strTimeoutError,
        );
      case DataSource.cacheError:
        return Failure(ResponseCode.cacheError, NetworkConsts.strCacheError);
      case DataSource.noInternetConnection:
        return Failure(
          ResponseCode.noInternetConnection,
          NetworkConsts.strNoInternetError,
        );
      case DataSource.defaultError:
        return Failure(
            ResponseCode.defaultError, NetworkConsts.strDefaultError);
    }
  }
}

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorised,
  notFound,
  internalServerError,
  connectionTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultError
}
