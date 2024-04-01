import 'package:dio/dio.dart';
import 'package:eco_shop/features/home/data/models/products_dto.dart';

class ProductsUseCase {
  final Dio dio;
  ProductsUseCase({
    required this.dio,
  });
  Future<List<ProductsDto>> getProducts(
      {String? byName, String? byCategory}) async {
    final Response response = await dio.get(
        "http://localhost:5050/product/getProducts",
        data: {"category": byCategory, "name": byName});
    List<ProductsDto> products = [];
    for (var element in response.data) {
      products.add(ProductsDto.fromJson(element));
    }
    // print(products);
    return products;
  }
}
