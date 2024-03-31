import 'package:eco_shop/features/auth/presentation/blocs/email_confirm_bloc/email_confirm_event.dart';
import 'package:eco_shop/features/auth/presentation/blocs/email_confirm_bloc/email_confirm_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eco_shop/features/auth/domain/repositories/register_rep.dart';

class EmailConfirmBloc extends Bloc<EmailConfirmEvent, EmailConfirmState> {
  final AuthRepositoryInterface _repository;
  EmailConfirmBloc({
    required AuthRepositoryInterface repository,
  })  : _repository = repository,
        super(const EmailConfirmState.initial()) {
    _getConfirm();
  }

  void _getConfirm() {
    return on<GetConfirm>((event, emit) async {
      emit(const EmailConfirmState.loading());
      try {
        final Map<String, dynamic> message =
            await _repository.getConfirm(code: event.code ?? "");

        emit(EmailConfirmState.success(message: message["message"]));
      } catch (e) {
        emit(EmailConfirmState.failure(error: e.toString()));
      }
    });
  }
}
