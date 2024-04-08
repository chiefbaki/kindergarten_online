import 'package:eco_shop/features/home/domain/repositories/basket_add_rep.dart';

class BasketAddUseCase {
  final BasketAddRep _repository;
  BasketAddUseCase({required BasketAddRep repository})
      : _repository = repository;

  Future<void> call({required int productId, required int quantity}) async {
    await _repository.addProductToBasket(
        productId: productId, quantity: quantity);
  }
}
