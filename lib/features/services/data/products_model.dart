import 'package:kindergarten_online/core/utils/resources/resources.dart';

class ProductsModel {
  final String name;
  final String img;
  ProductsModel({required this.name, required this.img});
  static List<ProductsModel> items = [
    ProductsModel(name: "Ролики", img: Imgs.one),
    ProductsModel(name: "Фломастеры", img: Imgs.two),
    ProductsModel(name: "Цветная бумага", img: Imgs.three),
    ProductsModel(name: "Наклейки", img: Imgs.four),
    ProductsModel(name: "Рюкзак", img: Imgs.five),
    ProductsModel(name: "Краски", img: Imgs.six),
  ];
}
