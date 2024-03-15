import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:flutter/material.dart';

import '../../core/config/themes/app_colors.dart';

class TrashBtn extends StatelessWidget {
  const TrashBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(6)),
        child: Image.asset(Images.trash),
      ),
    );
  }
}
