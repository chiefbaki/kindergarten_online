import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/personal_info_field.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/features/widgets/phone_text_field.dart';
import 'package:kindergarten_online/generated/l10n.dart';

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
  void initState() {
    super.initState();
    context.read<ProfileCubit>().profile();
  }

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

    return CustomScaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: SingleChildScrollView(
                    child: Column(children: [
                  NavBar(textStyle: textStyle, text: S.of(context).account),
                  SizedBox(
                    height: 40.h,
                  ),
                  BlocBuilder<ProfileCubit, ProfileState>(
                    builder: (context, state) {
                      return state.when(
                          initial: () => const SizedBox(),
                          loading: () => const Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
                          success: (entity) {
                            return Stack(
                              children: [
                                Image.asset(
                                  Imgs.rectangleAcc,
                                  fit: BoxFit.fill,
                                ),
                                Positioned(
                                  left: 165,
                                  top: 20,
                                  child: ClipOval(
                                    child: Image.asset(
                                      Imgs.ava,
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
                                    height: MediaQuery.of(context).size.height *
                                        0.7,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          S.of(context).name,
                                          style: textStyle.displaySmall!
                                              .copyWith(color: AppColors.white),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        PersonalInfoField(
                                          isReadOnly: true,
                                          textStyle: textStyle,
                                          hintText: entity.firstName ?? "",
                                          controller: _name,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          S.of(context).lastname,
                                          style: textStyle.displaySmall!
                                              .copyWith(color: AppColors.white),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        PersonalInfoField(
                                          isReadOnly: true,
                                          textStyle: textStyle,
                                          hintText: entity.lastName ?? "",
                                          controller: _lastName,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          S.of(context).middleName,
                                          style: textStyle.displaySmall!
                                              .copyWith(color: AppColors.white),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        PersonalInfoField(
                                          isReadOnly: true,
                                          textStyle: textStyle,
                                          hintText: entity.patronymic ?? "",
                                          controller: _middleName,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        // Text(
                                        //   S.of(context).gender,
                                        //   style: textStyle.displaySmall!
                                        //       .copyWith(color: AppColors.white),
                                        // ),
                                        // SizedBox(
                                        //   height: 10.h,
                                        // ),
                                        // TextFieldDrop(
                                        //   textStyle: textStyle,
                                        //   hintText: entity. ?? "",
                                        //   controller: _gender,
                                        //   isReadOnly: true,
                                        // ),
                                        // SizedBox(
                                        //   height: 20.h,
                                        // ),
                                        Text(
                                          S.of(context).phoneNumber,
                                          style: textStyle.displaySmall!
                                              .copyWith(color: AppColors.white),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        PhoneTextField(
                                            isReadOnly: true,
                                            textStyle: textStyle,
                                            hintText: entity.phone ?? "",
                                            controller: _phone)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          failure: (e) {
                            return Text(e);
                          });
                    },
                  )
                ])))));
  }
}
