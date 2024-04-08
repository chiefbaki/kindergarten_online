abstract interface class BasketAddRep {
  Future<void> addProductToBasket(
      {required int productId, required int quantity});
}
