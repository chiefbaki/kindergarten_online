import 'package:dio/dio.dart';
import 'package:eco_shop/features/home/data/models/products_dto.dart';
import 'package:eco_shop/features/home/domain/repositories/products_rep.dart';

class ProductsImpl implements ProductsRep {
  final Dio _dio;
  ProductsImpl({
    required Dio dio,
  }) : _dio = dio;
  @override
  Future<List<ProductsDto>> getProducts(
      String? byCategory, String? byName) async {
    final Map<String, String> queryParameters = {};
    if (byCategory != null) {
      queryParameters["category"] = byCategory;
    } else if (byName != null) {
      queryParameters["name"] = byName;
    }
    final Response response = await _dio.get(
        "http://localhost:5050/product/getProducts/",
        queryParameters: queryParameters);
    List<ProductsDto> products = [];
    for (var element in response.data) {
      products.add(ProductsDto.fromJson(element));
    }
    return products;
  }
}
