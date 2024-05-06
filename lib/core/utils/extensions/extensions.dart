import 'package:intl/intl.dart';

extension FormatDataTime on String? {
  String convertDateTime() {
    final DateTime time = DateTime.parse(this ?? "");
    final DateFormat formatter = DateFormat("dd.MM.yyyy - HH:mm:ss");
    return formatter.format(time);
  }
}

extension FormatToHH on String? {
  String convertHH() {
    final DateTime time = DateTime.parse(this ?? "");
    final DateFormat formatter = DateFormat("HH:mm");
    return formatter.format(time);
  }
}

extension HexToString on String {
  String fromHex() {
    final temp = replaceAll("#", "0xFF");
    return temp;
  }
}
