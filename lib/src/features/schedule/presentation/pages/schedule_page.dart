import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';
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
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: _paddingUnit * 5),
            child: Column(
              children: [
                NavBar(textStyle: textStyle, text: S.of(context).shedule),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: _paddingUnit * 3, vertical: _paddingUnit * 5),
                  child: Column(
                    children: [
                      TableCalendar(
                        
                        headerVisible: true,
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: DateTime.now(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
