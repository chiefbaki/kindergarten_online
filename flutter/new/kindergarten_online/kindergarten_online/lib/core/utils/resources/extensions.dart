import 'package:intl/intl.dart';

extension FormatDataTime on String? {
  String convertDateTime() {
    final DateTime time = DateTime.parse(this ?? "");
    final DateFormat formatter = DateFormat("dd.MM.yyyy - HH:mm:ss");
    return formatter.format(time);
  }
}
