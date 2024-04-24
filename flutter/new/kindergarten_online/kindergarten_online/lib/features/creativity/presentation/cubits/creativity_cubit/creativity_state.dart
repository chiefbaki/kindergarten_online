part of 'creativity_cubit.dart';

@freezed
class CreativityState with _$CreativityState {
  const factory CreativityState.initial() = _Initial;
  const factory CreativityState.loading() = _Loading;
  const factory CreativityState.success(
      {required CreativityListEntity entity}) = _Success;
  const factory CreativityState.failure({required String error}) = _Failure;
}
