part of 'chat_users_bloc.dart';

@freezed
class ChatUsersState with _$ChatUsersState {
  const factory ChatUsersState.initial() = _Initial;
  const factory ChatUsersState.loading() = _Loading;
  const factory ChatUsersState.success({required List<ChatListEntity> users}) =
      _Success;
  const factory ChatUsersState.failure({required String error}) = _Failure;
}
