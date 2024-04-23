import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/get_token_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/login_usecase.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/save_token_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final SaveTokenUseCase _saveTokenUseCase;
  final GetTokenUseCase _getTokenUseCase;
  final LoginUseCase _useCase;

  LoginCubit(
      {required LoginUseCase useCase,
      required SaveTokenUseCase saveTokenUseCase,
      required GetTokenUseCase getTokenUseCase})
      : _useCase = useCase,
        _saveTokenUseCase = saveTokenUseCase,
        _getTokenUseCase = getTokenUseCase,
        super(const LoginState.initial());

  Future<void> login({required String phone, required String password}) async {
    emit(const _Loading());
    final dataState = await _useCase.call(
        param: LoginReqDto(phone: phone, password: password));

    if (dataState is DataSuccess) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("access", dataState.data!.access ?? "error");
      print(prefs.getString("access"));
      // await _saveTokenUseCase(
      //     param: TokenDto(
      //         access: dataState.data!.access ?? "",
      //         refresh: dataState.data!.refresh ?? ""));
      // final token = await _getTokenUseCase();
      // print("ACCESS TOKEN CUBIT ${token.access}");
      emit(const LoginState.success());
    }
    if (dataState is DataFailed) {
      emit(LoginState.failure(error: dataState.message!.error.toString()));
    }
  }
}
