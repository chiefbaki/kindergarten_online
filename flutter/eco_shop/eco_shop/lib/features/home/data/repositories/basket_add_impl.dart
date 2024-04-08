import 'package:dio/dio.dart';
import 'package:eco_shop/features/home/data/models/basket_add_dto.dart';
import 'package:eco_shop/features/home/domain/repositories/basket_add_rep.dart';

class BasketAddImpl implements BasketAddRep {
  final Dio _dio;

  const BasketAddImpl({required Dio dio}) : _dio = dio;

  @override
  Future<void> addProductToBasket(
      {required int productId, required int quantity}) async {
    await _dio.post("http://localhost:5050/basket/add",
        data: BasketAddDto(productId: productId, quantity: quantity).toJson());
  }
}
