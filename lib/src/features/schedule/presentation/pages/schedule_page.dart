import 'package:auto_route/auto_route.dart';
import 'package:clean_calendar/clean_calendar.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

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
                      CleanCalendar(
                        headerProperties: HeaderProperties(
                          
                        ),
                        enableDenseViewForDates: true,
                        enableDenseSplashForDates: true,
                        datesForStreaks: [
                          DateTime(2023, 01, 5),
                          DateTime(2023, 01, 6),
                          DateTime(2023, 01, 7),
                          DateTime(2023, 01, 9),
                          DateTime(2023, 01, 10),
                          DateTime(2023, 01, 11),
                          DateTime(2023, 01, 13),
                          DateTime(2023, 01, 20),
                          DateTime(2023, 01, 21),
                          DateTime(2023, 01, 23),
                          DateTime(2023, 01, 24),
                          DateTime(2023, 01, 25),
                        ],
                        dateSelectionMode:
                            DatePickerSelectionMode.singleOrMultiple,
                        startWeekday: WeekDay.wednesday,
                        selectedDates: selectedDates,
                        onCalendarViewDate: (DateTime calendarViewDate) {
                          // print(calendarViewDate);
                        },
                        onSelectedDates: (List<DateTime> value) {
                          setState(() {
                            if (selectedDates.contains(value.first)) {
                              selectedDates.remove(value.first);
                            } else {
                              selectedDates.add(value.first);
                            }
                          });
                          // print(selectedDates);
                        },
                      ),
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
