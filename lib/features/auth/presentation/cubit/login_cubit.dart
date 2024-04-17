import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/features/auth/data/dto/request/login_req_dto.dart';
import 'package:kindergarten_online/features/auth/data/dto/response/login_res_dto.dart';
import 'package:kindergarten_online/features/auth/domain/usecases/login_usecase.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase _useCase;
  LoginCubit({required LoginUseCase useCase})
      : _useCase = useCase,
        super(const LoginState.initial());

  Future<void> login({required String phone, required String password}) async {
    emit(const _Loading());
    try {
      final LoginResDto entity = await _useCase(
          param: LoginReqDto(phone: phone, password: password));
      emit(_Success(entity: entity));
    } catch (e) {
      emit(_Failure(error: e.toString()));
    }
  }
}
