import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';

class MenuItem {
  final String img;
  final String name;
  final dynamic route;
  MenuItem({required this.img, required this.name, required this.route});

  static List<MenuItem> items = [
    MenuItem(
        img: Images.camera,
        name: "Видео наблюдение",
        route: const CameraRoute()),
    MenuItem(
        img: Images.scheduleIcon,
        name: "Расписание занятий",
        route: const CameraRoute()),
    MenuItem(
        img: Images.newsIcon, name: "Лента новостей", route: const NewsRoute()),
    MenuItem(
        img: Images.prodIcon,
        name: "Товары и услуги",
        route: const ServicesRoute()),
    MenuItem(
        img: Images.contactIcon,
        name: "Мои контакты",
        route: const CameraRoute()),
    MenuItem(
        img: Images.chatIcon,
        name: "Чаты с родителями",
        route: const CameraRoute()),
    MenuItem(
        img: Images.uchetIcon,
        name: "Учет посещаемости",
        route: const CameraRoute()),
    MenuItem(
        img: Images.ideaIcon,
        name: "Творчество детей",
        route: const CameraRoute()),
    MenuItem(img: Images.check, name: "Квитанции", route: const CameraRoute()),
    MenuItem(
        img: Images.infoIcon,
        name: "Справочная информация",
        route: const CameraRoute()),
    MenuItem(
        img: Images.settingsIcon,
        name: "Настройка приложения",
        route: const CameraRoute()),
    MenuItem(
        img: Images.questionIcon,
        name: "Вопрос техподдержке",
        route: const CameraRoute()),
  ];
}
