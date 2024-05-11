import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/auth/domain/usecases/logout_usecase.dart';

part 'logout_state.dart';
part 'logout_cubit.freezed.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutUseCase _useCase;
  LogoutCubit(this._useCase) : super(const LogoutState.initial());

  Future<void> logout() async {
    emit(const LogoutState.loading());
    final dataState = await _useCase();
    if (dataState is DataSuccess) {
      emit(LogoutState.success(msg: dataState.message ?? ""));
    } else if (dataState is DataFailed) {
      emit(LogoutState.failure(error: dataState.message ?? ""));
    }
  }
}
