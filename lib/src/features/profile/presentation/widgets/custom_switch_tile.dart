import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class CustomSwitchTile extends StatefulWidget {
  final String name;
  final bool isSelected;
  final Function(bool) onChanged;
  const CustomSwitchTile(
      {super.key,
      required this.name,
      required this.isSelected,
      required this.onChanged});

  @override
  State<CustomSwitchTile> createState() => _CustomSwitchTileState();
}

class _CustomSwitchTileState extends State<CustomSwitchTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.name,
          style: context.textTheme.titleSmall!.copyWith(color: AppColors.white),
        ),
        const Spacer(),
        Switch(
            activeTrackColor: AppColors.navyBlue,
            inactiveTrackColor: AppColors.navyBlue,
            inactiveThumbColor: AppColors.lightBlue,
            trackOutlineColor:
                const MaterialStatePropertyAll(AppColors.lightBlue),
            value: widget.isSelected,
            onChanged: widget.onChanged)
      ],
    );
  }
}
