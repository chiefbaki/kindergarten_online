import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/custom_appbar.dart';
import 'package:kindergarten_online/src/features/widgets/custom_btn.dart';

@RoutePage()
class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(textStyle: textStyle, title: "Восстановление"),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Восстановить",
              style: textStyle.displayLarge!.copyWith(color: AppColors.black),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomBtn(onPressed: () {}, name: "Пароль"),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "или",
              style: textStyle.displayLarge!.copyWith(color: AppColors.black),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomBtn(onPressed: () {}, name: "Номер телефона"),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
