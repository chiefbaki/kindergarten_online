import 'package:dio/dio.dart';
import 'package:eco_shop/features/bag/data/models/shopping_card_dto.dart';
import 'package:eco_shop/features/bag/domain/repositories/shopping_card_rep.dart';

class ShoppingCardImpl implements ShoppingCardRep {
  final Dio _dio;
  ShoppingCardImpl({required Dio dio}) : _dio = dio;

  Future<ShoppingCardDto> getShoppingCard() async {
    final Response response = await _dio.get(
      "http://localhost:5050/basket/show",
    );
    return ShoppingCardDto.fromJson(response.data);
  }
}
