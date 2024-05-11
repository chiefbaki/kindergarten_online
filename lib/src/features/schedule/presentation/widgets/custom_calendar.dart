// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gap/gap.dart';
// import 'package:kindergarten_online/core/config/theme/app_colors.dart';
// import 'package:kindergarten_online/features/schedule/presentation/widgets/calendar_btn.dart';
// import 'package:kindergarten_online/features/schedule/presentation/widgets/day_name_widget.dart';
// import 'package:kindergarten_online/features/schedule/presentation/widgets/weak_name_widget.dart';
// import 'package:kindergarten_online/features/widgets/colored_container.dart';

// import '../../../../core/utils/resources/resources.dart';

// const double _paddingUnit = 5;

// class CustomCalendar extends StatefulWidget {
//   const CustomCalendar({
//     super.key,
//     required this.textStyle,
//   });

//   final TextTheme textStyle;

//   @override
//   State<CustomCalendar> createState() => _CustomCalendarState();
// }

// class _CustomCalendarState extends State<CustomCalendar> {
//   DateTime _selectedDate = DateTime.now();

//   void _selectDate(DateTime date) {
//     setState(() {
//       _selectedDate = date;
//     });
//   }

//   late int _selectedMonth;
//   late int _selectedYear;
//   @override
//   void initState() {
//     super.initState();
//     DateTime _now = DateTime.now();
//     _selectedMonth = _now.month;
//     _selectedYear = _now.year;
//   }

//   String _getMonthName(int month) {
//     final List<String> months = [
//       'January',
//       'February',
//       'March',
//       'April',
//       'May',
//       'June',
//       'July',
//       'August',
//       'September',
//       'October',
//       'November',
//       'December'
//     ];
//     return months[month - 1];
//   }

//   @override
//   Widget build(BuildContext context) {
//     final textStyle = Theme.of(context).textTheme;
//     final height = MediaQuery.of(context).size.height;

//     List<String> days = [
//       'DN',
//       'ВТ',
//       'СР',
//       'ЧТ',
//       'ПТ',
//       'СБ',
//       'ВС',
//     ];
//     return ColoredContainer(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: _paddingUnit * 3, vertical: _paddingUnit * 4),
//             decoration: BoxDecoration(
//                 color: AppColors.darkBlue,
//                 borderRadius: BorderRadius.circular(15)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "29 января 2024 г.",
//                   style: widget.textStyle.displayMedium!
//                       .copyWith(color: AppColors.white),
//                 ),
//                 Row(
//                   children: [
//                     CalendarBtn(
//                       onPressed: () {
//                         setState(() {
//                           _selectedMonth--;
//                           if (_selectedMonth > 12) {
//                             _selectedMonth = 1;
//                             _selectedYear++;
//                           }
//                         });
//                       },
//                       icon: SvgPicture.asset(
//                         Imgs.iconArrowLeft,
//                         color: AppColors.blue,
//                       ),
//                     ),
//                     Gap(_paddingUnit * 4.w),
//                     CalendarBtn(
//                       onPressed: () {
//                         setState(() {
//                           _selectedMonth++;
//                           if (_selectedMonth > 12) {
//                             _selectedMonth = 1;
//                             _selectedYear++;
//                           }
//                         });
//                       },
//                       icon: SvgPicture.asset(
//                         Imgs.iconArrowRightOne,
//                         color: AppColors.blue,
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.symmetric(
//                 vertical: _paddingUnit * 4, horizontal: _paddingUnit * 4),
//             height: 20,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               shrinkWrap: true,
//               itemCount: days.length,
//               itemBuilder: (_, index) => WeakName(
//                 title: days[index],
//                 textStyle: textStyle,
//               ),
//               separatorBuilder: (context, index) => SizedBox(
//                 width: 33.w,
//               ),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.fromLTRB(
//                 _paddingUnit * 4, 0, _paddingUnit * 4, _paddingUnit * 4),
//             height: height * 0.18,
//             child: GridView.builder(
//                 itemCount: 31,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 7,
//                     mainAxisSpacing: 21,
//                     crossAxisSpacing: 43),
//                 itemBuilder: (_, index) {
//                   final date = DateTime(
//                       _selectedDate.year, _selectedDate.month, index + 1);
//                   return InkWell(
//                     onTap: () {
//                       _selectDate(date);
//                     },
//                     child: Container(
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(color: AppColors.navyBlue),
//                       child: DayName(
//                         title: "${index + 1}",
//                         textStyle: textStyle,
//                       ),
//                     ),
//                   );
//                 }),
//           )
//         ],
//       ),
//     );
//   }

//   void _navigateToPreviousMonth() {}
//   void _navigateToNextMonth() {}

//   void _addEvent() {
//     // Show event creation dialog
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('Add Event'),
//         content: TextField(
//           decoration: InputDecoration(labelText: 'Event Title'),
//           onSubmitted: (value) {
//             // Save event to database
//           },
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text('Cancel'),
//           ),
//           TextButton(
//             onPressed: () {
//               // Save event to database
//               Navigator.pop(context);
//             },
//             child: Text('Save'),
//           ),
//         ],
//       ),
//     );
//   }
// }
