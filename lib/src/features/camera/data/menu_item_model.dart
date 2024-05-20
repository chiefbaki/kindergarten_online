import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';

class MenuItem {
  final String img;

  final dynamic route;

  MenuItem({
    required this.img,
    required this.route,
  });

  static List<MenuItem> items = [
    MenuItem(img: Imgs.prodIcon, route: const ServicesRoute()),
    MenuItem(img: Imgs.contactIcon, route: const MyContactsRoute()),
    MenuItem(img: Imgs.chatIcon, route: const ChatsListRoute()),
    MenuItem(img: Imgs.uchetIcon, route: const AttendanceRoute()),
    MenuItem(img: Imgs.ideaIcon, route: const CreativityRoute()),
    MenuItem(img: Imgs.check, route: const PaymentReceiptsRoute()),
    MenuItem(img: Imgs.infoIcon, route: const PoliticsRoute()),
    MenuItem(img: Imgs.settingsIcon, route: const SettingsRoute()),
    MenuItem(img: Imgs.questionIcon, route: const CameraListRoute()),
    MenuItem(img: Imgs.camera, route: const CameraListRoute()),
    MenuItem(img: Imgs.scheduleIcon, route: const ScheduleRoute()),
    MenuItem(img: Imgs.newsIcon, route: const NewsRoute()),
  ];
}
