import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kindergarten_online/core/config/settings/dio_exception_handler.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/auth/data/data_sources/remote/remote_auth_data.dart';
import 'package:kindergarten_online/features/auth/data/mappers/login_mapper.dart';
import 'package:kindergarten_online/features/auth/data/mappers/token_mapper.dart';
import 'package:kindergarten_online/features/auth/domain/entities/request/login_req_entity.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LoginImpl implements LoginRep {
  final AuthRemoteDataSource _remoteData;
  LoginImpl(this._remoteData);

  @override
  Future<DataState<TokenEntity>> getLogin(
      {required LoginReqEntity entity}) async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;

    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }

    try {
      final httpResponse =
          await _remoteData.getLogin(entity: entity.fromEntity());
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        debugPrint(httpResponse.data.access);
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
