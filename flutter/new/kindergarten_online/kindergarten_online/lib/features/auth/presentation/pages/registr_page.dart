import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/widgets/custom_appbar.dart';
import 'package:kindergarten_online/features/widgets/custom_btn.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:kindergarten_online/features/widgets/custom_text_field.dart';
import 'package:kindergarten_online/features/widgets/phone_text_field.dart';
import 'package:kindergarten_online/features/widgets/text_field_drop.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class RegistrPage extends StatefulWidget {
  const RegistrPage({super.key});

  @override
  State<RegistrPage> createState() => _RegistrPageState();
}

class _RegistrPageState extends State<RegistrPage> {
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _kindergarten = TextEditingController();
  final _group = TextEditingController();
  final _nameAndAddress = TextEditingController();

  bool _obscureText = true;

  @override
  void dispose() {
    super.dispose();
    _phone.dispose();
    _password.dispose();
    _kindergarten.dispose();
    _group.dispose();
    _nameAndAddress.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar:
          CustomAppBar(textStyle: textStyle, title: S.of(context).registration),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.of(context).phoneNumber,
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
                  SizedBox(
                    height: 10.h,
                  ),
                  PhoneTextField(
                    controller: _phone,
                    textStyle: textStyle,
                    hintText: "+996 (555) 555-555",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(S.of(context).password,
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                      controller: _password,
                      textStyle: textStyle,
                      hintText: S.of(context).inputPassword,
                      obscureText: _obscureText,
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      }),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(S.of(context).kindergarten,
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
                  SizedBox(height: 10.h),
                  TextFieldDrop(
                    textStyle: textStyle,
                    hintText: S.of(context).nameAndAddress,
                    controller: _nameAndAddress,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(S.of(context).group,
                      style: textStyle.displaySmall!
                          .copyWith(color: AppColors.black)),
                  SizedBox(height: 10.h),
                  TextFieldDrop(
                    textStyle: textStyle,
                    hintText: S.of(context).chooseGroupOrClass,
                    controller: _group,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Column(
                      children: [
                        CustomBtn(
                            onPressed: () {}, name: S.of(context).registration),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).alreadyHaveAnAcc,
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.grey),
                            ),
                            CustomTextBtn(
                                textStyle: textStyle,
                                onPressed: () {
                                  context.router.push(const LoginRoute());
                                },
                                name: S.of(context).enter)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              Imgs.registrBack,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
