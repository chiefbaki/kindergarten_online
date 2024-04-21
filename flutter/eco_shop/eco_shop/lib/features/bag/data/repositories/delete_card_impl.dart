import 'package:dio/dio.dart';
import 'package:eco_shop/features/bag/data/models/delete_card_dto.dart';
import 'package:eco_shop/features/bag/domain/repositories/delete_card_rep.dart';

class DeleteCardImpl implements DeleteCardRep {
  final Dio _dio;

  DeleteCardImpl({required Dio dio}) : _dio = dio;

  @override
  Future<String> deleteCard(
      {required int productId, required int quantity}) async {
    final Response response = await _dio.delete(
        "http://localhost:5050/basket/delete",
        data: DeleteCardDto(productId: productId, quantity: quantity).toJson());
    return response.data;
  }
}
