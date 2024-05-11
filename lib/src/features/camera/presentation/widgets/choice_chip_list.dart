import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';

class ChoiceChipList extends StatefulWidget {
  const ChoiceChipList({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  State<ChoiceChipList> createState() => _ChoiceChipListState();
}

class _ChoiceChipListState extends State<ChoiceChipList> {
  final List<String> _choiceData = [
    "Все",
    "Снаружи",
    "Внутри",
    "Другое",
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => ChoiceChip(
          elevation: 0,
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              _choiceData[index],
              style: widget.textStyle.displaySmall!
                  .copyWith(color: AppColors.white),
            ),
          ),
          selected: _selectedIndex == index,
          selectedColor: AppColors.blue,
          backgroundColor: AppColors.navyBlue,
          onSelected: (value) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        separatorBuilder: (_, context) => SizedBox(
          width: 10.w,
        ),
      ),
    );
  }
}
