import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/profile/domain/entities/profile_entity.dart';
import 'package:kindergarten_online/src/features/profile/domain/usecases/profile_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCase _useCase;
  ProfileBloc(this._useCase) : super(const _Initial()) {
    _viewProfile();
  }

  void _viewProfile() {
    on<ProfileEvent>((event, emit) async {
      emit(const ProfileState.loading());
      final dataState = await _useCase.call();
      if (dataState is DataSuccess) {
        emit(ProfileState.success(
            profile: dataState.data ?? const ProfileEntity()));
      }
      if (dataState is DataFailed) {
        emit(ProfileState.failure(error: dataState.message.toString()));
      }
    });
  }
}
