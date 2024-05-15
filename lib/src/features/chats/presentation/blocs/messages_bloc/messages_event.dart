part of 'messages_bloc.dart';

@freezed
class MessagesEvent with _$MessagesEvent {
  const factory MessagesEvent.getMessages({String? id}) = _GetMessages;

  const factory MessagesEvent.sendMessage({required String message}) =
      _SendMessage;
}
