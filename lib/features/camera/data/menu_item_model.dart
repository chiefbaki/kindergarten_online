import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';

class MenuItem {
  final String img;
  final String name;
  final dynamic route;
  MenuItem({required this.img, required this.name, required this.route});

  static List<MenuItem> items = [
    MenuItem(
        img: Imgs.camera, name: "Видео наблюдение", route: const CameraRoute()),
    MenuItem(
        img: Imgs.scheduleIcon,
        name: "Расписание занятий",
        route: const ScheduleRoute()),
    MenuItem(
        img: Imgs.newsIcon, name: "Лента новостей", route: const NewsRoute()),
    MenuItem(
        img: Imgs.prodIcon,
        name: "Товары и услуги",
        route: const ServicesRoute()),
    MenuItem(
        img: Imgs.contactIcon,
        name: "Мои контакты",
        route: const CameraRoute()),
    MenuItem(
        img: Imgs.chatIcon,
        name: "Чаты с родителями",
        route: const CameraRoute()),
    MenuItem(
        img: Imgs.uchetIcon,
        name: "Учет посещаемости",
        route: const CameraRoute()),
    MenuItem(
        img: Imgs.ideaIcon,
        name: "Творчество детей",
        route: const CreativityRoute()),
    MenuItem(img: Imgs.check, name: "Квитанции", route: const CameraRoute()),
    MenuItem(
        img: Imgs.infoIcon,
        name: "Справочная информация",
        route: const PoliticsRoute()),
    MenuItem(
        img: Imgs.settingsIcon,
        name: "Настройка приложения",
        route: const SettingsRoute()),
    MenuItem(
        img: Imgs.questionIcon,
        name: "Вопрос техподдержке",
        route: const CameraRoute()),
  ];
}
