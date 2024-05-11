part of 'creativity_bloc.dart';

@freezed
class CreativityEvent with _$CreativityEvent {
  const factory CreativityEvent.creativity() = Creativity;
  const factory CreativityEvent.searchCreativity({required String query}) =
      SearchCreativity;
}
