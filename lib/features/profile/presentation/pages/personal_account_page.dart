import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/personal_info_field.dart';
import 'package:kindergarten_online/features/widgets/custom_float_btn.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/features/widgets/phone_text_field.dart';
import 'package:kindergarten_online/features/widgets/text_field_drop.dart';

@RoutePage()
class PersonalAccountPage extends StatefulWidget {
  const PersonalAccountPage({super.key});

  @override
  State<PersonalAccountPage> createState() => _PersonalAccountPageState();
}

class _PersonalAccountPageState extends State<PersonalAccountPage> {
  final _name = TextEditingController();
  final _lastName = TextEditingController();
  final _middleName = TextEditingController();
  final _gender = TextEditingController();
  final _phone = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _name.dispose();
    _lastName.dispose();
    _middleName.dispose();
    _gender.dispose();
    _phone.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavBar(textStyle: textStyle, text: "Аккаунт"),
                SizedBox(
                  height: 40.h,
                ),
                Stack(
                  children: [
                    Image.asset(
                      Images.rectangleAcc,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      left: 165,
                      top: 20,
                      child: ClipOval(
                        child: Image.asset(
                          Images.ava,
                          width: 100,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      right: 15,
                      top: 150,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Имя:",
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            PersonalInfoField(
                              textStyle: textStyle,
                              hintText: "Имя",
                              controller: _name,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Фамилия:",
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            PersonalInfoField(
                              textStyle: textStyle,
                              hintText: "Фамилия",
                              controller: _lastName,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Отчество:",
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            PersonalInfoField(
                              textStyle: textStyle,
                              hintText: "Отчество",
                              controller: _middleName,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Пол:",
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            TextFieldDrop(
                              textStyle: textStyle,
                              hintText: "Пол",
                              controller: _gender,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Номер телефона:",
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            PhoneTextField(
                                textStyle: textStyle,
                                hintText: "Номер телефона",
                                controller: _phone)
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: const CustomFloatBtn(isToSwitch: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
    );
  }
}
