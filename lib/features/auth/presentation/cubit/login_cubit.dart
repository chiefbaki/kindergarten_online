import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/domain/entities/response/token_entity.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/login_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/save_token_usecase.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final SaveTokenUseCase _saveTokenUseCase;
  final LoginUseCase _useCase;

  LoginCubit(
      {required LoginUseCase useCase,
      required SaveTokenUseCase saveTokenUseCase})
      : _useCase = useCase,
        _saveTokenUseCase = saveTokenUseCase,
        super(const LoginState.initial());

  Future<void> login({required String phone, required String password}) async {
    emit(const LoginState.loading());

    final dataState = await _useCase.call(
        param: LoginReqDto(phone: phone, password: password));

    if (dataState is DataSuccess) {
      await _saveTokenUseCase(
          param: TokenEntity(
              access: dataState.data!.access ?? "error",
              refresh: dataState.data!.refresh ?? "error"));
      emit(const LoginState.success());
    }
    if (dataState is DataFailed) {
      emit(LoginState.failure(error: dataState.message.toString()));
    }
  }
}
