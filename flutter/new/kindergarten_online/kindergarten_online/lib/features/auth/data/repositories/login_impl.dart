import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
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
    try {
      final httpResponse =
          await _remoteData.getLogin(entity: entity.fromEntity());
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        debugPrint(httpResponse.data.access);
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
