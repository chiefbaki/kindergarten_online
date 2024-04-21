abstract interface class DeleteCardRep {
  Future<String> deleteCard({required int productId, required int quantity});
}
