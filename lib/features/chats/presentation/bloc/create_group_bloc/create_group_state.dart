part of 'create_group_bloc.dart';

@freezed
class CreateGroupState with _$CreateGroupState {
  const factory CreateGroupState.initial() = _Initial;
  const factory CreateGroupState.loading() = _Loading;
  const factory CreateGroupState.success({required CreateGroupResEntity entity}) = _Success;
  const factory CreateGroupState.failure({required String error}) = _Failure;

}
