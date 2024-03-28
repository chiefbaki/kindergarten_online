import 'package:eco_shop/features/auth/domain/repositories/register_rep.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eco_shop/features/auth/data/models/login_response_dto.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepositoryInterface _repository;
  LoginBloc({required AuthRepositoryInterface repository}) : 
  _repository = repository,
  super(LoginInitial()) {
    _getLogin();
  }

   void _getLogin() {
    return on<GetLogin>((event, emit) async {
      emit(LoginLoading());
      try {
        final LoginResponseDto loginModel  = await _repository.getLogin(
          password: event.password,
          username: event.username,
        );
        emit(LoginSuccess(loginResponse: loginModel));
      } catch (e) {
        emit(LoginFailure(error: e.toString()));
      }
    });
  }
}
