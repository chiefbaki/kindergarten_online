import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/token_dto.dart';
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
    emit(const _Loading());
    try {
      final TokenDto param =
          await _useCase(param: LoginReqDto(phone: phone, password: password));
      _saveTokenUseCase.call(param: param);
      emit(const _Success());
    } catch (e) {
      emit(_Failure(error: e.toString()));
    }
  }
}
