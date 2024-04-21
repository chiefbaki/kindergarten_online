import 'package:eco_shop/features/bag/data/models/shopping_card_dto.dart';
import 'package:eco_shop/features/bag/domain/usecases/shopping_card_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_card_event.dart';
part 'shopping_card_state.dart';
part 'shopping_card_bloc.freezed.dart';

class ShoppingCardBloc extends Bloc<ShoppingCardEvent, ShoppingCardState> {
  final ShoppingCardUseCase _useCase;
  ShoppingCardBloc({required ShoppingCardUseCase useCase})
      : _useCase = useCase,
        super(const _Initial()) {
    _getCard();
  }

  void _getCard() {
    on<ShoppingCardEvent>((event, emit) async {
      emit(const _Loading());
      try {
        final ShoppingCardDto card = await _useCase();
        emit(_Success(card: card));
      } catch (e) {
        emit(_Failure(error: e.toString()));
      }
    });
  }
}
