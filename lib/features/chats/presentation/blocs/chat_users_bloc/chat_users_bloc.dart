import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/domain/entities/req/chat_list_entity.dart';
import 'package:kindergarten_online/features/chats/domain/usecases/chat_list_usecase.dart';

part 'chat_users_event.dart';
part 'chat_users_state.dart';
part 'chat_users_bloc.freezed.dart';

class ChatUsersBloc extends Bloc<ChatUsersEvent, ChatUsersState> {
  final ChatListUseCase _useCase;
  ChatUsersBloc(this._useCase) : super(const _Initial()) {
    on<ChatUsersEvent>((event, emit) async {
      emit(const ChatUsersState.loading());
      final dataState = await _useCase(param: event.query);
      if (dataState is DataSuccess) {
        emit(ChatUsersState.success(users: dataState.data!.toList()));
      } else if (dataState is DataFailed) {
        emit(ChatUsersState.failure(error: dataState.message ?? ""));
      }
    });
  }
}
