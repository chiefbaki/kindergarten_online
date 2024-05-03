import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/chats/domain/entities/chat_messages_list_entity.dart';

part 'messages_event.dart';
part 'messages_state.dart';
part 'messages_bloc.freezed.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc() : super(_Initial()) {
    on<MessagesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
