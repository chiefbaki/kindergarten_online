import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:equatable/equatable.dart';

class HomeProductsDto extends Equatable {
  final String? img;
  final String? title;
  const HomeProductsDto({required this.img, required this.title});

  static List<HomeProductsDto> getProducts = const [
        HomeProductsDto(img: Images.home, title: 'Фрукты'),
        HomeProductsDto(img: Images.hom1, title: 'Сухофрукты'),
        HomeProductsDto(img: Images.home2, title: 'Овощи'),
        HomeProductsDto(img: Images.home4, title: 'Зелень'),
        HomeProductsDto(img: Images.home5, title: 'Чай кофе'),
        HomeProductsDto(img: Images.home3, title: 'Молочные продукты'),
      ];

  @override
  List<Object?> get props => [img, title];
}
