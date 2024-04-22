import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/profile/data/dto/profile_dto.dart';
import 'package:kindergarten_online/features/profile/domain/usecases/profile_usecase.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileUseCase _useCase;
  ProfileCubit(this._useCase) : super(const ProfileState.initial());

  Future<void> profile() async {
    emit(const ProfileState.loading());
    final dataState = await _useCase.call();
    if (dataState is DataSuccess) {
      emit(ProfileState.success(profile: dataState.data ?? const ProfileDto()));
    }
    if (dataState is DataFailed) {
      emit(ProfileState.failure(error: dataState.message!.error.toString()));
    }
  }
}
