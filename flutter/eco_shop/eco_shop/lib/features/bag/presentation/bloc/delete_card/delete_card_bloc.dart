import 'package:eco_shop/features/bag/domain/usecases/delete_card_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_card_event.dart';
part 'delete_card_state.dart';
part 'delete_card_bloc.freezed.dart';

class DeleteCardBloc extends Bloc<DeleteCardEvent, DeleteCardState> {
  final DeleteCardUseCase _useCase;
  DeleteCardBloc({required DeleteCardUseCase useCase})
      : _useCase = useCase,
        super(const _Initial()) {
    on<DeleteCardEvent>((event, emit) async {
      emit(const _Loading());
      try {
        final String text = await _useCase(
            productId: event.productId, quantity: event.quantity);
        emit(_Success(success: text));
      } catch (e) {
        emit(_Failure(error: e.toString()));
      }
    });
  }
}
