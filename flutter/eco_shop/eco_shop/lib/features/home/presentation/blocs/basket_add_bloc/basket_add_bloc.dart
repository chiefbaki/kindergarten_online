import 'package:eco_shop/features/home/domain/usecases/basket_add_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_add_event.dart';
part 'basket_add_state.dart';
part 'basket_add_bloc.freezed.dart';

class BasketAddBloc extends Bloc<BasketAddEvent, BasketAddState> {
  final BasketAddUseCase _useCase;
  BasketAddBloc({required BasketAddUseCase useCase})
      : _useCase = useCase,
        super(const BasketAddState.initial()) {
    _addToBasket();
  }

  void _addToBasket() {
    on<BasketAddEvent>((event, emit) async {
      emit(const BasketAddState.loading());
      try {
        await _useCase(
            productId: event.productId, quantity: event.quantity);
        emit(BasketAddState.success());
      } catch (e) {
        emit(BasketAddState.failure(error: e.toString()));
      }
    });
  }
}
