part of 'create_group_bloc.dart';

@freezed
class CreateGroupEvent with _$CreateGroupEvent {
  const factory CreateGroupEvent.create({required CreateGroupReqEntity entity}) = Create;
}