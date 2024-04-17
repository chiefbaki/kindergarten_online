part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success({required LoginResDto entity}) = _Success;
  const factory LoginState.failure({required String error}) = _Failure;

}
