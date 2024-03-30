import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:equatable/equatable.dart';

class ProductsDto extends Equatable {
  final String? img;
  final String? title;
  const ProductsDto({required this.img, required this.title});

  static List<ProductsDto> getProducts = const [
        ProductsDto(img: Images.home, title: 'Фрукты'),
        ProductsDto(img: Images.hom1, title: 'Сухофрукты'),
        ProductsDto(img: Images.home2, title: 'Овощи'),
        ProductsDto(img: Images.home4, title: 'Зелень'),
        ProductsDto(img: Images.home5, title: 'Чай кофе'),
        ProductsDto(img: Images.home3, title: 'Молочные продукты'),
      ];

  @override
  List<Object?> get props => [img, title];
}
