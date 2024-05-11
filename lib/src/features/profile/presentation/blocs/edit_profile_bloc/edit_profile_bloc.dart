import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/src/features/profile/domain/entities/edit_profile_entity.dart';
import 'package:kindergarten_online/src/features/profile/domain/usecases/edit_profile_usecase.dart';
part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final EditProfileUseCase _useCase;
  EditProfileBloc(this._useCase) : super(const _Initial()) {
    _editProfile();
  }

  void _editProfile() {
    on<EditProfileEvent>((event, emit) async {
      emit(const EditProfileState.loading());
      try {
        await _useCase(param: event.entity);
        emit(const EditProfileState.success());
      } catch (e) {
        emit(EditProfileState.failure(error: e.toString()));
      }
    });
  }
}
