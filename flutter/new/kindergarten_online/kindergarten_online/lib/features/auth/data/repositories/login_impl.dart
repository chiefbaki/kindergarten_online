import 'dart:io';
import 'package:dio/dio.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/auth/data/data_sources/remote/remote_auth_data.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LoginImpl implements LoginRep {
  final AuthRemoteDataSource _remoteData;
  LoginImpl(this._remoteData);

  @override
  Future<DataState<TokenDto>> getLogin({required LoginReqDto entity}) async {
    try {
      final httpResponse = await _remoteData.getLogin(entity: entity);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
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
