import 'package:eco_shop/core/config/settings/shared_prefences/shared_repository_impl.dart';
import 'package:eco_shop/core/utils/constants/app_consts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eco_shop/features/auth/domain/repositories/register_rep.dart';
import 'package:equatable/equatable.dart';

part 'email_confirm_event.dart';
part 'email_confirm_state.dart';

class EmailConfirmBloc extends Bloc<EmailConfirmEvent, EmailConfirmState> {
  final AuthRepositoryInterface _repository;
  final SharedPrefsImpl _prefs;
  EmailConfirmBloc(
      {required AuthRepositoryInterface repository,
      required SharedPrefsImpl prefs})
      : _repository = repository,
        _prefs = prefs,
        super(EmailConfirmInitial()) {
    _getConfirm();
  }

  void _getConfirm() {
    return on<GetConfirm>((event, emit) async {
      emit(EmailConfirmLoading());
      try {
        final Map<String, dynamic> message =
            await _repository.getConfirm(code: event.code ?? "");

        emit(EmailConfirmSuccess(message: message["message"]));
      } catch (e) {
        emit(EmailConfirmFailure(error: e.toString()));
      }
    });
  }
}
