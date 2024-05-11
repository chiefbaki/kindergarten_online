// ignore: file_names
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/resources/functions.dart';
import 'package:kindergarten_online/src/features/profile/domain/entities/edit_profile_entity.dart';
import 'package:kindergarten_online/src/features/profile/presentation/blocs/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/personal_info_field.dart';
import 'package:kindergarten_online/src/features/widgets/custom_btn.dart';
import 'package:kindergarten_online/src/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

const double _paddingUnit = 5;
const int _delayDuraion = 2;

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
          padding: const EdgeInsets.symmetric(vertical: _paddingUnit * 5),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: S.of(context).editProfile),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: _paddingUnit * 3, vertical: _paddingUnit * 5),
                child: BlocListener<EditProfileBloc, EditProfileState>(
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
                              duration: const Duration(seconds: _delayDuraion),
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
                      Gap(
                        _paddingUnit * 2.h,
                      ),
                      PersonalInfoField(
                          textInputAction: TextInputAction.next,
                          textStyle: textStyle,
                          hintText: S.of(context).inputName,
                          controller: _firstName),
                      Gap(
                        _paddingUnit * 4.h,
                      ),
                      Text(
                        S.of(context).lastname,
                        style: textStyle.displaySmall!
                            .copyWith(color: AppColors.black),
                      ),
                      Gap(
                        _paddingUnit * 2.h,
                      ),
                      PersonalInfoField(
                          textInputAction: TextInputAction.next,
                          textStyle: textStyle,
                          hintText: S.of(context).inputLastName,
                          controller: _lastName),
                      Gap(
                        _paddingUnit * 4.h,
                      ),
                      Text(
                        S.of(context).middleName,
                        style: textStyle.displaySmall!
                            .copyWith(color: AppColors.black),
                      ),
                      Gap(
                        _paddingUnit * 2.h,
                      ),
                      PersonalInfoField(
                          textInputAction: TextInputAction.done,
                          textStyle: textStyle,
                          hintText: S.of(context).inputMiddleName,
                          controller: _middleName),
                      Gap(
                        _paddingUnit * 5.h,
                      ),
                      Center(
                          child: CustomBtn(
                              onPressed: switcher
                                  ? () {
                                      context
                                          .read<EditProfileBloc>()
                                          .add(EditProfileEvent.started(
                                              entity: EditProfileEntity(
                                            firstName: _firstName.text,
                                            lastName: _lastName.text,
                                            patronymic: _middleName.text,
                                            avatar: "",
                                          )));
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
