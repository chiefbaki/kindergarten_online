import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/custom_appbar.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_btn.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_text_field.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/phone_text_field.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/text_field_drop.dart';
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
    return Scaffold(
      appBar: CustomAppBar(title: S.of(context).registration),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 44, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.of(context).phoneNumber,
                      style: context.textTheme.displaySmall!
                          .copyWith(color: AppColors.black)),
                  10.verticalSpace,
                  PhoneTextField(
                    controller: _phone,
                    hintText: "+996 (555) 555-555",
                  ),
                  20.verticalSpace,
                  Text(S.of(context).password,
                      style: context.textTheme.displaySmall!
                          .copyWith(color: AppColors.black)),
                  10.verticalSpace,
                  CustomTextField(
                      controller: _password,
                      hintText: S.of(context).inputPassword,
                      obscureText: _obscureText,
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      }),
                  20.verticalSpace,
                  Text(S.of(context).kindergarten,
                      style: context.textTheme.displaySmall!
                          .copyWith(color: AppColors.black)),
                  10.verticalSpace,
                  TextFieldDrop(
                    hintText: S.of(context).nameAndAddress,
                    controller: _nameAndAddress,
                  ),
                  20.verticalSpace,
                  Text(S.of(context).group,
                      style: context.textTheme.displaySmall!
                          .copyWith(color: AppColors.black)),
                  10.verticalSpace,
                  TextFieldDrop(
                    hintText: S.of(context).chooseGroupOrClass,
                    controller: _group,
                  ),
                  20.verticalSpace,
                  Center(
                    child: Column(
                      children: [
                        CustomBtn(
                            onPressed: () {}, name: S.of(context).registration),
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).alreadyHaveAnAcc,
                              style: context.textTheme.displaySmall!
                                  .copyWith(color: AppColors.grey),
                            ),
                            CustomTextBtn(
                                onPressed: () {
                                  _goToLogin(context);
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

  void _goToLogin(BuildContext context) {
    context.router.push(const LoginRoute());
  }
}
