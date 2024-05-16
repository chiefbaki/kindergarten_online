import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_btn.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_text_field.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/navbar.dart';

const double _paddingUnit = 5;

@RoutePage()
class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _oldPassword = TextEditingController();
  final _newPassword = TextEditingController();
  final _confirmNewPassword = TextEditingController();

  bool _isOldPassNotVisible = true;
  bool _isNewsPassNotVisible = true;

  bool isEmpty = true;
  

  @override
  void dispose() {
    super.dispose();
    _oldPassword.dispose();
    _newPassword.dispose();
    _confirmNewPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      appBar: Navbar(textStyle: textStyle, title: S.of(context).changePassword),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: _paddingUnit * 3, vertical: _paddingUnit * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).oldPass,
              style: textStyle.displaySmall!.copyWith(color: AppColors.black),
            ),
            Gap(
              _paddingUnit * 2.h,
            ),
            CustomTextField(
                textStyle: textStyle,
                hintText: S.of(context).oldPassField,
                obscureText: _isOldPassNotVisible,
                onPressed: () {
                  setState(() {
                    _isOldPassNotVisible = !_isOldPassNotVisible;
                  });
                },
                controller: _oldPassword),
            Gap(
              _paddingUnit * 4.h,
            ),
            Text(
              S.of(context).newPass,
              style: textStyle.displaySmall!.copyWith(color: AppColors.black),
            ),
            Gap(
              _paddingUnit * 2.h,
            ),
            CustomTextField(
                textStyle: textStyle,
                hintText: S.of(context).newPassField,
                obscureText: _isNewsPassNotVisible,
                onPressed: () {
                  setState(() {
                    _isNewsPassNotVisible = !_isNewsPassNotVisible;
                  });
                },
                controller: _newPassword),
            Gap(
              _paddingUnit * 4.h,
            ),
            Text(
              S.of(context).confirmNewPass,
              style: textStyle.displaySmall!.copyWith(color: AppColors.black),
            ),
            Gap(
              _paddingUnit * 2.h,
            ),
            CustomTextField(
                textStyle: textStyle,
                obscureText: _isNewsPassNotVisible,
                hintText: S.of(context).confirmNewPassField,
                controller: _confirmNewPassword),
            Gap(
              _paddingUnit * 5.h,
            ),
            Center(
                child: CustomBtn(
                    onPressed: () {}, name: S.of(context).saveChanges))
          ],
        ),
      ),
    );
  }
}
