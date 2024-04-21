import 'package:kindergarten_online/core/utils/resources/resources.dart';

class ProductsModel {
  final String name;
  final String img;
  ProductsModel({required this.name, required this.img});
  static List<ProductsModel> items = [
    ProductsModel(name: "Ролики", img: Images.one),
    ProductsModel(name: "Фломастеры", img: Images.two),
    ProductsModel(name: "Цветная бумага", img: Images.three),
    ProductsModel(name: "Наклейки", img: Images.four),
    ProductsModel(name: "Рюкзак", img: Images.five),
    ProductsModel(name: "Краски", img: Images.six),
  ];
}
