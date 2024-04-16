import 'package:kindergarten_online/core/utils/resources/resources.dart';

class MenuItem {
  final String img;
  final String name;
  MenuItem({required this.img, required this.name});

  static List<MenuItem> items = [
    MenuItem(img: Images.camera, name: "Видео наблюдение"),
    MenuItem(img: Images.scheduleIcon, name: "Расписание занятий"),
    MenuItem(img: Images.newsIcon, name: "Лента новостей"),
    MenuItem(img: Images.prodIcon, name: "Товары и услуги"),
    MenuItem(img: Images.contactIcon, name: "Мои контакты"),
    MenuItem(img: Images.chatIcon, name: "Чаты с родителями"),
    MenuItem(img: Images.uchetIcon, name: "Учет посещаемости"),
    MenuItem(img: Images.ideaIcon, name: "Творчество детей"),
    MenuItem(img: Images.check, name: "Квитанции"),
    MenuItem(img: Images.infoIcon, name: "Справочная информация"),
    MenuItem(img: Images.settingsIcon, name: "Настройка приложения"),
    MenuItem(img: Images.questionIcon, name: "Вопрос техподдержке"),
  ];
}
