import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class ChoiceChipList extends StatefulWidget {
  const ChoiceChipList({
    super.key,
  });

  @override
  State<ChoiceChipList> createState() => _ChoiceChipListState();
}

class _ChoiceChipListState extends State<ChoiceChipList> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> choiceData = [
      S.of(context).all,
      S.of(context).outside,
      S.of(context).inside,
      S.of(context).other,
    ];
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
              choiceData[index],
              style: context.textTheme.displaySmall!
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
