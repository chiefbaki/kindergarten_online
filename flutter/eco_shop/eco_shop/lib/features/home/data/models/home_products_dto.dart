import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:equatable/equatable.dart';

class HomeProductsDto extends Equatable {
  final String? img;
  final String? category;
  const HomeProductsDto({required this.img, required this.category});

  static List<HomeProductsDto> getProducts = const [
        HomeProductsDto(img: Images.home, category: 'Fruits'),
        HomeProductsDto(img: Images.hom1, category: 'Dried_fruits'),
        HomeProductsDto(img: Images.home2, category: 'Vegetables'),
        HomeProductsDto(img: Images.home4, category: 'Greenery'),
        HomeProductsDto(img: Images.home5, category: 'Tea_Coffee'),
        HomeProductsDto(img: Images.home3, category: 'Milk_products'),
      ];

  @override
  List<Object?> get props => [img, category];
}
