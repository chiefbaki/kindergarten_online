import 'dart:io';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kindergarten_online/core/config/settings/dio_exception_handler.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/data/data_sources/remote/remote_chat_data.dart';
import 'package:kindergarten_online/features/chats/data/mappers/chat_list_mapper.dart';
import 'package:kindergarten_online/features/chats/data/mappers/chat_messages_list_mapper.dart';
import 'package:kindergarten_online/features/chats/data/mappers/contact_mapper.dart';
import 'package:kindergarten_online/features/chats/data/mappers/create_group_mapper.dart';
import 'package:kindergarten_online/features/chats/domain/entities/chat_messages_list_entity.dart';
import 'package:kindergarten_online/features/chats/domain/entities/contact_entity.dart';
import 'package:kindergarten_online/features/chats/domain/entities/req/chat_list_entity.dart';
import 'package:kindergarten_online/features/chats/domain/entities/req/create_group_req_entity.dart';
import 'package:kindergarten_online/features/chats/domain/entities/res/create_group_res.entity.dart';
import 'package:kindergarten_online/features/chats/domain/repositories/chat_repository.dart';

class ChatImpl implements ChatRepository {
  final RemoteChatData _remoteChatData;
  ChatImpl(this._remoteChatData);

  @override
  Future<DataState<ContactEntity>> getContact({String? query}) async {
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

  @override
  Future<DataState<CreateGroupResEntity>> createGroup(
      {required CreateGroupReqEntity entity}) async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;
    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }
    try {
      final httpResponse = await _remoteChatData.createGroup(entity: entity);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.fromEntity());
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

  @override
  Future<DataState<List<ChatListEntity>>> getChatList({String? query}) async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;
    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }
    try {
      final httpResponse = await _remoteChatData.getChatList(query: query);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.map((e) => e.toEntity()).toList());
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

  @override
  Future<DataState<ChatMessagesListEntity>> getMessages({String? id}) async {
    final hasInternetConnection =
        await InternetConnectionChecker().hasConnection;
    if (!hasInternetConnection) {
      return DataFailed(
          message: DataSource.noInternetConnection.getFailure().message);
    }
    try {
      final httpResponse = await _remoteChatData.getMessages();
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
