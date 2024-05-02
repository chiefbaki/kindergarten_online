import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/domain/entities/contact_entity.dart';
import 'package:kindergarten_online/features/chats/domain/usecases/contact_usecase.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactUseCase _useCase;
  ContactBloc(this._useCase) : super(const _Initial()) {
    _contact();
  }

  void _contact() {
    on<ContactEvent>((event, emit) async {
      emit(const ContactState.loading());
      final dataState = await _useCase(param: event.query);
      if (dataState is DataSuccess) {
        emit(ContactState.success(
            entity: dataState.data ?? const ContactEntity()));
      } else if (dataState is DataFailed) {
        emit(ContactState.failure(error: dataState.message ?? ""));
      }
    });
  }
}
