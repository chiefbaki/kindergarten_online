part of 'chat_users_bloc.dart';

@freezed
class ChatUsersEvent with _$ChatUsersEvent {
  const factory ChatUsersEvent.viewUsers({String? query}) = _ViewUsers;
}
