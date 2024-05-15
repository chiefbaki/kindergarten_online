part of 'messages_bloc.dart';

@freezed
class MessagesState with _$MessagesState {
  const factory MessagesState.initial() = _Initial;
  const factory MessagesState.loading() = _Loading;
  const factory MessagesState.success({
    required ChatMessagesListEntity entity,
    required List<String> msg,
  }) = _Success;
  const factory MessagesState.failure({required String error}) = _Failure;
}
