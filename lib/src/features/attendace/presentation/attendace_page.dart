import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/navbar.dart';

@RoutePage()
class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  // final _firstDay = DateTime(2010, 11, 11);
  // final _lastDay = DateTime(2030, 11, 11);
  // final _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      appBar: Navbar(textStyle: textStyle, title: S.of(context).attendace),
      body: const Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              // Container(
              //   margin: const EdgeInsets.only(top: 25),
              //   child: TableCalendar(
              //     focusedDay: _focusedDay,
              //     firstDay: _firstDay,
              //     lastDay: _lastDay,
              //     headerStyle: const HeaderStyle(),
              //     calendarStyle: const CalendarStyle(
              //         outsideDecoration:
              //             BoxDecoration(color: AppColors.navyBlue)),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
