import 'package:kindergarten_online/core/utils/resources/resources.dart';

class CamerasPosition {
  final String img;
  final String name;
  CamerasPosition({required this.img, required this.name});

  static List<CamerasPosition> positions = [
    CamerasPosition(img: Images.bedroom, name: "Спальня"),
    CamerasPosition(img: Images.area, name: "Площадка"),
    CamerasPosition(img: Images.cab, name: "Кабинет #1"),
    CamerasPosition(img: Images.cab2, name: "Кабинет #2"),
    CamerasPosition(img: Images.kitchen, name: "Кухня"),
    CamerasPosition(img: Images.gamezone, name: "Игровая"),
  ];
}
