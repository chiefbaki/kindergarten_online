import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/domain/entities/chat_messages_list_entity.dart';
import 'package:kindergarten_online/features/chats/domain/usecases/messages_list_usecase.dart';

part 'messages_event.dart';
part 'messages_state.dart';
part 'messages_bloc.freezed.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  final MessagesUseCase _useCase;
  MessagesBloc(this._useCase) : super(const _Initial()) {
    _messages();
  }

  void _messages() {
    on<MessagesEvent>((event, emit) async {
      emit(const MessagesState.loading());
      final dataState = await _useCase(param: event.id);
      if (dataState is DataSuccess) {
        emit(MessagesState.success(
            entity: dataState.data ?? ChatMessagesListEntity()));
      } else if (dataState is DataFailed) {
        emit(MessagesState.failure(error: dataState.message ?? ""));
      }
    });
  }
}
