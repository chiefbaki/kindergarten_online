import 'dart:io';

import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kindergarten_online/core/config/settings/dio_exception_handler.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/data/data_sources/remote/remote_chat_data.dart';
import 'package:kindergarten_online/features/chats/data/mappers/contact_mapper.dart';
import 'package:kindergarten_online/features/chats/domain/entities/contact_entities.dart';
import 'package:kindergarten_online/features/chats/domain/repositories/contact_repository.dart';

class ContactImpl implements ContactRepository {
  final RemoteChatData _remoteChatData;
  ContactImpl(this._remoteChatData);
  @override
  Future<DataState<ContactEntity>> getContact() async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;
    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }
    try {
      final httpResponse = await _remoteChatData.getContact();
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
