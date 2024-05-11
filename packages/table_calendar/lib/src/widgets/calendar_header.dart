import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/src/customization/colors.dart';

import '../customization/header_style.dart';
import '../shared/utils.dart' show CalendarFormat, DayBuilder;
import 'custom_icon_button.dart';
// import 'format_button.dart';

class CalendarHeader extends StatelessWidget {
  final dynamic locale;
  final DateTime focusedMonth;
  final CalendarFormat calendarFormat;
  final HeaderStyle headerStyle;
  final VoidCallback onLeftChevronTap;
  final VoidCallback onRightChevronTap;
  final VoidCallback onHeaderTap;
  final VoidCallback onHeaderLongPress;
  final ValueChanged<CalendarFormat> onFormatButtonTap;
  final Map<CalendarFormat, String> availableCalendarFormats;
  final DayBuilder? headerTitleBuilder;

  const CalendarHeader({
    Key? key,
    this.locale,
    required this.focusedMonth,
    required this.calendarFormat,
    required this.headerStyle,
    required this.onLeftChevronTap,
    required this.onRightChevronTap,
    required this.onHeaderTap,
    required this.onHeaderLongPress,
    required this.onFormatButtonTap,
    required this.availableCalendarFormats,
    this.headerTitleBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = headerStyle.titleTextFormatter?.call(focusedMonth, locale) ??
        DateFormat.yMMMMEEEEd(locale).format(focusedMonth);

    return Container(
      decoration: BoxDecoration(
          color: AppColors.darkBlue, borderRadius: BorderRadius.circular(15)),
      margin: headerStyle.headerMargin,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: headerTitleBuilder?.call(context, focusedMonth) ??
                GestureDetector(
                  onTap: onHeaderTap,
                  onLongPress: onHeaderLongPress,
                  child: Text(
                    text,
                    style: TextStyle(color: AppColors.white),
                    textAlign: headerStyle.titleCentered
                        ? TextAlign.center
                        : TextAlign.start,
                  ),
                ),
          ),
          // if (headerStyle.formatButtonVisible &&
          //     availableCalendarFormats.length > 1)
          // Padding(
          //   padding: const EdgeInsets.only(left: 8.0),
          //   child: FormatButton(
          //     onTap: onFormatButtonTap,
          //     availableCalendarFormats: availableCalendarFormats,
          //     calendarFormat: calendarFormat,
          //     decoration: headerStyle.formatButtonDecoration,
          //     padding: headerStyle.formatButtonPadding,
          //     textStyle: headerStyle.formatButtonTextStyle,
          //     showsNextFormat: headerStyle.formatButtonShowsNext,
          //   ),
          // ),
          Row(
            children: [
              if (headerStyle.leftChevronVisible)
                CustomIconButton(
                  icon: headerStyle.leftChevronIcon,
                  onTap: onLeftChevronTap,
                  // margin: headerStyle.leftChevronMargin,
                  // padding: headerStyle.leftChevronPadding,
                ),
              if (headerStyle.rightChevronVisible)
                CustomIconButton(
                  icon: headerStyle.rightChevronIcon,
                  onTap: onRightChevronTap,
                  // margin: headerStyle.rightChevronMargin,
                  // padding: headerStyle.rightChevronPadding,
                ),
            ],
          )
        ],
      ),
    );
  }
}
