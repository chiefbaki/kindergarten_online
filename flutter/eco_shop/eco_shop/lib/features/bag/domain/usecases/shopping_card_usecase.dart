import 'package:eco_shop/features/bag/data/models/shopping_card_dto.dart';
import 'package:eco_shop/features/bag/domain/repositories/shopping_card_rep.dart';

class ShoppingCardUseCase {
  final ShoppingCardRep _repository;
  ShoppingCardUseCase({required ShoppingCardRep repository})
      : _repository = repository;

  Future<ShoppingCardDto> call() async {
    return _repository.getShoppingCard();
  }
}
