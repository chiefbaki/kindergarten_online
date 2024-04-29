import 'package:kindergarten_online/core/utils/resources/resources.dart';

class CamerasPosition {
  final String img;
  final String name;
  CamerasPosition({required this.img, required this.name});

  static List<CamerasPosition> positions = [
    CamerasPosition(img: Imgs.bedroom, name: "Спальня"),
    CamerasPosition(img: Imgs.area, name: "Площадка"),
    CamerasPosition(img: Imgs.cab, name: "Кабинет #1"),
    CamerasPosition(img: Imgs.cab2, name: "Кабинет #2"),
    CamerasPosition(img: Imgs.kitchen, name: "Кухня"),
    CamerasPosition(img: Imgs.gamezone, name: "Игровая"),
  ];
}
