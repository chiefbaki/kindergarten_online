import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/navbar.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';
import 'package:kindergarten_online/src/features/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/personal_info_field.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/phone_text_field.dart';
import 'package:kindergarten_online/generated/l10n.dart';

const double _paddingUnit = 5;

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
    context.read<ProfileBloc>().add(const ProfileEvent.profile());
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
    return CustomScaffold(
        appBar: Navbar(title: S.of(context).account),
        body: SingleChildScrollView(
            child: Column(children: [
          55.verticalSpace,
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return state.when(
                  initial: () => const SizedBox(),
                  loading: () => const CustomProgressIndicator(),
                  success: (entity) {
                    return Stack(
                      children: [
                        Image.asset(
                          Imgs.rectangleAcc,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          left: 155,
                          right: 155,
                          child: ClipOval(
                            child: Image.asset(
                              Imgs.ava,
                              // width: 100,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          right: 15,
                          top: 150,
                          child: SizedBox(
                            width: context.width,
                            height: context.height * 0.7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  S.of(context).name,
                                  style: context.textTheme.displaySmall!
                                      .copyWith(color: AppColors.white),
                                ),
                                10.verticalSpace,
                                PersonalInfoField(
                                  textInputAction: TextInputAction.next,
                                  isReadOnly: true,
                                  hintText: entity.firstName ?? "",
                                  controller: _name,
                                ),
                                20.verticalSpace,
                                Text(
                                  S.of(context).lastname,
                                  style: context.textTheme.displaySmall!
                                      .copyWith(color: AppColors.white),
                                ),
                                10.verticalSpace,
                                PersonalInfoField(
                                  textInputAction: TextInputAction.next,
                                  isReadOnly: true,
                                  hintText: entity.lastName ?? "",
                                  controller: _lastName,
                                ),
                                20.verticalSpace,
                                Text(
                                  S.of(context).middleName,
                                  style: context.textTheme.displaySmall!
                                      .copyWith(color: AppColors.white),
                                ),
                                10.verticalSpace,
                                PersonalInfoField(
                                  textInputAction: TextInputAction.done,
                                  isReadOnly: true,
                                  hintText: entity.patronymic ?? "",
                                  controller: _middleName,
                                ),
                                20.verticalSpace,
                                Text(
                                  S.of(context).phoneNumber,
                                  style: context.textTheme.displaySmall!
                                      .copyWith(color: AppColors.white),
                                ),
                                10.verticalSpace,
                                PhoneTextField(
                                    isReadOnly: true,
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
        ])));
  }
}
