import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eco_shop/features/auth/domain/repositories/register_rep.dart';
import 'package:meta/meta.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepositoryInterface repository;
  RegisterBloc({required this.repository}) : super(RegisterInitial()) {
    _getRegister();
    _getLogin();
  }

  void _getRegister() {
    return on<GetRegister>((event, emit) async {
      emit(RegisterLoading());
      try {
        final Map<String, dynamic> success = await repository.getRegister(
            email: event.email,
            password: event.password,
            username: event.username,
            phoneNumber: event.phoneNumber);
        emit(RegisterSuccess(success: success));
      } catch (e) {
        emit(RegisterError(error: e.toString()));
      }
    });
  }

  void _getLogin() {
    return on<GetLogin>((event, emit) async {
      emit(RegisterLoading());
      try {
        final Map<String, dynamic> success = await repository.getLogin(
          email: event.email,
          password: event.password,
          username: event.username,
        );
        emit(RegisterSuccess(success: success));
      } catch (e) {
        emit(RegisterError(error: e.toString()));
      }
    });
  }

  void _getConfirm(){
     return on<GetLogin>((event, emit) async {
      emit(RegisterLoading());
      try {
        final Map<String, dynamic> success = await repository.getLogin(
          email: event.email,
          password: event.password,
          username: event.username,
        );
        emit(RegisterSuccess(success: success));
      } catch (e) {
        emit(RegisterError(error: e.toString()));
      }
    });
  }
}
