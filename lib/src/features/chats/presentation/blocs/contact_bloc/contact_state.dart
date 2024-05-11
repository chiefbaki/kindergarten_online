part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.initial() = _Initial;
  const factory ContactState.loading() = _Loading;
  const factory ContactState.success({required ContactEntity entity}) =
      _Success;
  const factory ContactState.failure({required String error}) = _Failure;
}
