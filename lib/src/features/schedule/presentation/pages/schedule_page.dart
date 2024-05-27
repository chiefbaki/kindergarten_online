import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/navbar.dart';
import 'package:table_calendar/table_calendar.dart';

const double _paddingUnit = 5;

/// In development
@RoutePage()
class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  List<DateTime> selectedDates = [];
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final lastDay = DateTime.utc(2030, 3, 14);
    final firstDay = DateTime.utc(2010, 10, 16);
    return CustomScaffold(
      appBar: Navbar(title: S.of(context).shedule),
      body: Column(
        children: [
          Padding(
            padding: REdgeInsets.symmetric(
              horizontal: _paddingUnit * 3,
            ),
            child: TableCalendar(
              headerVisible: true,
              firstDay: firstDay,
              lastDay: lastDay,
              focusedDay: now,
            ),
          )
        ],
      ),
    );
  }
}
