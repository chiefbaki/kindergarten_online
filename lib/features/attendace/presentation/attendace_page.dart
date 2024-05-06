import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:table_calendar/table_calendar.dart';

@RoutePage()
class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  final _firstDay = DateTime(2010, 11, 11);
  final _lastDay = DateTime(2030, 11, 11);
  final _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                NavBar(textStyle: textStyle, text: S.of(context).attendace),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: TableCalendar(
                    focusedDay: _focusedDay,
                    firstDay: _firstDay,
                    lastDay: _lastDay,
                    headerStyle: const HeaderStyle(),
                    calendarStyle: const CalendarStyle(
                        outsideDecoration:
                            BoxDecoration(color: AppColors.navyBlue)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
