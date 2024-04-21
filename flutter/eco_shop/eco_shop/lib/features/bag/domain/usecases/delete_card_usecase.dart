import 'package:eco_shop/features/bag/domain/repositories/delete_card_rep.dart';

class DeleteCardUseCase {
  final DeleteCardRep _repository;
  DeleteCardUseCase({required DeleteCardRep repository})
      : _repository = repository;

  Future<String> call({required int productId, required int quantity}) async {
    return await _repository.deleteCard(
        productId: productId, quantity: quantity);
  }
}
