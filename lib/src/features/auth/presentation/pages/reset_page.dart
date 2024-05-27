import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/custom_appbar.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_btn.dart';

@RoutePage()
class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: S.of(context).resoreTitle),
      body: Center(
        child: Column(
          children: [
            50.verticalSpace,
            Text(
              S.of(context).restore,
              style: context.textTheme.displayLarge!
                  .copyWith(color: AppColors.black),
            ),
            10.verticalSpace,
            CustomBtn(onPressed: () {}, name: S.of(context).password),
            10.verticalSpace,
            Text(
              S.of(context).or,
              style: context.textTheme.displayLarge!
                  .copyWith(color: AppColors.black),
            ),
            10.verticalSpace,
            CustomBtn(onPressed: () {}, name: S.of(context).phoneNumber),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
