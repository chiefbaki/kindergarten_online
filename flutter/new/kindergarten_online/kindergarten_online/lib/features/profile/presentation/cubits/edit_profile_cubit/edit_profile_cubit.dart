import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/profile/data/dto/edit_profile_dto.dart';
import 'package:kindergarten_online/features/profile/domain/usecases/edit_profile_usecase.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final EditProfileUseCase _useCase;
  EditProfileCubit(this._useCase) : super(const EditProfileState.initial());

  Future<void> editProfile({required EditProfileDto entity}) async {
    emit(const EditProfileState.loading());
    try {
      await _useCase(param: entity);
      emit(const EditProfileState.success());
    } catch (e) {
      emit(EditProfileState.failure(error: e.toString()));
    }
  }
}
