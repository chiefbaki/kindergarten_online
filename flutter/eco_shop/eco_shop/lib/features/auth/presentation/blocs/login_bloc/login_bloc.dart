import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository.dart';
import 'package:eco_shop/core/utils/constants/app_consts.dart';
import 'package:eco_shop/features/auth/domain/repositories/register_rep.dart';
import 'package:eco_shop/features/auth/presentation/blocs/login_bloc/login_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eco_shop/features/auth/data/models/login_response_dto.dart';
import 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepositoryInterface _repository;
  final SharedPrefsRepository _prefs;
  LoginBloc(
      {required AuthRepositoryInterface repository,
      required SharedPrefsRepository prefs})
      : _repository = repository,
        _prefs = prefs,
        super(const LoginState.initial()) {
    _getLogin();
  }

  void _getLogin() {
    return on<GetLogin>((event, emit) async {
      emit(const LoginState.loading());
      try {
        final LoginResponseDto loginModel = await _repository.getLogin(
          password: event.password,
          email: event.email,
        );
        _prefs.saveValue(
            key: AppConsts.accessToken, value: loginModel.accessToken);
        emit(LoginState.success(loginResponse: loginModel));
      } catch (e) {
        emit(LoginState.failure(error: e.toString()));
      }
    });
  }
}
