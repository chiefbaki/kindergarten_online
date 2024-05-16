import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/src/core/config/services/service_locator.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/core/utils/resources/logger.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/chat_messages_list_entity.dart';
import 'package:kindergarten_online/src/features/chats/domain/usecases/messages_list_usecase.dart';

part 'messages_event.dart';
part 'messages_state.dart';
part 'messages_bloc.freezed.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  final MessagesUseCase _useCase;
  MessagesBloc(this._useCase) : super(const _Initial()) {
    _messages();
    _addMessage();
  }

  final _log = sl<Logging>();
  final List<String> messages = [];

  void _messages() {
    on<_GetMessages>((event, emit) async {
      emit(const MessagesState.loading());
      final dataState = await _useCase(param: event.id);

      if (dataState is DataSuccess) {
        for (var el in dataState.data!.results ?? []) {
          messages.add(el.content ?? "");
        }

        // debugPrint("LIST : ${messages.reversed}");
        emit(MessagesState.success(
            entity: dataState.data ?? ChatMessagesListEntity(), msg: messages));
      } else if (dataState is DataFailed) {
        emit(MessagesState.failure(error: dataState.message ?? ""));
      }
    });
  }

  void _addMessage() {
    on<_SendMessage>((event, emit) async {
      messages.add(event.message);
      _log.log.info("Message ${event.message} added");
      debugPrint(messages.toString());
    });
  }
}
