import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository.dart';
import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository_impl.dart';
import 'package:eco_shop/core/utils/constants/app_consts.dart';
import 'package:eco_shop/features/auth/presentation/blocs/register_bloc/register_event.dart';
import 'package:eco_shop/features/auth/presentation/blocs/register_bloc/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eco_shop/features/auth/domain/repositories/register_rep.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepositoryInterface _repository;
  final SharedPrefsRepository _prefs;
  RegisterBloc(
      {required AuthRepositoryInterface repository,
      required SharedPrefsImpl prefs})
      : _repository = repository,
        _prefs = prefs,
        super(const RegisterState.initial()) {
    _getRegister();
  }

  void _getRegister() {
    return on<GetRegister>((event, emit) async {
      emit(const RegisterState.loading());
      try {
        final Map<String, dynamic> success = await _repository.getRegister(
          email: event.email,
          password: event.password,
        );
        _prefs.saveValue(key: AppConsts.emailKey, value: event.email);
        emit(RegisterState.success(success: success));
      } catch (e) {
        emit(RegisterState.failure(error: e.toString()));
      }
    });
  }
}
