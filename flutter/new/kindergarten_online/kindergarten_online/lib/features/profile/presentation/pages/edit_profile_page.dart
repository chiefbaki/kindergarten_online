// ignore: file_names
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/functions.dart';
import 'package:kindergarten_online/features/profile/domain/entities/edit_profile_entity.dart';
import 'package:kindergarten_online/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/personal_info_field.dart';
import 'package:kindergarten_online/features/widgets/custom_btn.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _middleName = TextEditingController();

  @override
  void initState() {
    super.initState();
    _firstName.addListener(() {
      checkState(
          paramTwo: _lastName,
          paramOne: _firstName,
          paramThree: _middleName,
          setState: setState);
    });
    _lastName.addListener(() {
      checkState(
          paramTwo: _lastName,
          paramOne: _firstName,
          paramThree: _middleName,
          setState: setState);
    });
    _middleName.addListener(() {
      (checkState(
          paramTwo: _lastName,
          paramOne: _firstName,
          paramThree: _middleName,
          setState: setState));
    });
  }

  @override
  void dispose() {
    super.dispose();
    _firstName.dispose();
    _lastName.dispose();
    _middleName.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: S.of(context).editProfile),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: BlocListener<EditProfileCubit, EditProfileState>(
                  listener: (context, state) {
                    state.when(
                        initial: () => const SizedBox(),
                        loading: () {
                          debugPrint("Loading");
                        },
                        success: () {
                          debugPrint("Success");
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              dismissDirection: DismissDirection.horizontal,
                              duration: const Duration(seconds: 2),
                              content: Text(
                                S.of(context).dataChanged,
                                style: textStyle.displaySmall!
                                    .copyWith(color: AppColors.white),
                              )));
                        },
                        failure: (e) {
                          debugPrint(e);
                        });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).name,
                        style: textStyle.displaySmall!
                            .copyWith(color: AppColors.black),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      PersonalInfoField(
                          textStyle: textStyle,
                          hintText: S.of(context).inputName,
                          controller: _firstName),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        S.of(context).lastname,
                        style: textStyle.displaySmall!
                            .copyWith(color: AppColors.black),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      PersonalInfoField(
                          textStyle: textStyle,
                          hintText: S.of(context).inputLastName,
                          controller: _lastName),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        S.of(context).middleName,
                        style: textStyle.displaySmall!
                            .copyWith(color: AppColors.black),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      PersonalInfoField(
                          textStyle: textStyle,
                          hintText: S.of(context).inputMiddleName,
                          controller: _middleName),
                      SizedBox(
                        height: 25.h,
                      ),
                      Center(
                          child: CustomBtn(
                              onPressed: switcher
                                  ? () {
                                      context
                                          .read<EditProfileCubit>()
                                          .editProfile(
                                              entity: EditProfileEntity(
                                            firstName: _firstName.text,
                                            lastName: _lastName.text,
                                            patronymic: _middleName.text,
                                            avatar: "",
                                          ));
                                    }
                                  : null,
                              name: S.of(context).saveTheChanges))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
