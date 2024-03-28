import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository.dart';
import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository_impl.dart';
import 'package:eco_shop/core/utils/constants/app_consts.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eco_shop/features/auth/domain/repositories/register_rep.dart';
import 'package:meta/meta.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepositoryInterface _repository;
  final SharedPrefsRepository _prefs;
  RegisterBloc(
      {required AuthRepositoryInterface repository,
      required SharedPrefsImpl prefs})
      : _repository = repository,
        _prefs = prefs,
        super(RegisterInitial()) {
    _getRegister();
  }

  void _getRegister() {
    return on<GetRegister>((event, emit) async {
      emit(RegisterLoading());
      try {
        final Map<String, dynamic> success = await _repository.getRegister(
            email: event.email,
            password: event.password,
            username: event.username,
            phoneNumber: event.phoneNumber);
        _prefs.saveValue(key: AppConsts.emailKey, value: event.email);
        emit(RegisterSuccess(success: success));
      } catch (e) {
        emit(RegisterError(error: e.toString()));
      }
    });
  }

}
