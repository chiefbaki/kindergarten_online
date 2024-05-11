import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/auth/presentation/logout_cubit/logout_cubit.dart';
import 'package:kindergarten_online/src/features/widgets/colored_container.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/custom_switch_tile.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/exit_btn.dart';
import 'package:kindergarten_online/src/features/widgets/text_with_arrow.dart';
import 'package:kindergarten_online/src/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

const double _paddingUnit = 5;

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool messagesInChat = false;
  bool newEvent = false;
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: _paddingUnit * 5),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: S.of(context).Settings),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: _paddingUnit * 4, vertical: _paddingUnit * 5),
                child: Column(
                  children: [
                    ColoredContainer(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWithArrow(
                            textStyle: textStyle,
                            onPressed: () {
                              _goToPersonalAcc(context);
                            },
                            name: S.of(context).account,
                          ),
                          const CustomDivider(),
                          TextWithArrow(
                            textStyle: textStyle,
                            onPressed: () {
                              _goToEditProfile(context);
                            },
                            name: S.of(context).editProfile,
                          ),
                          const CustomDivider(),
                          TextWithArrow(
                            textStyle: textStyle,
                            onPressed: () {
                              _gotToChangePass(context);
                            },
                            name: S.of(context).changePassword,
                          ),
                        ],
                      ),
                    ),
                    Gap(
                      _paddingUnit * 2.h,
                    ),
                    ColoredContainer(
                      padding: const EdgeInsets.fromLTRB(20, 17, 20, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).notifications,
                            style: textStyle.displaySmall!
                                .copyWith(color: AppColors.white),
                          ),
                          Gap(
                            _paddingUnit * 2.h,
                          ),
                          const CustomDivider(),
                          CustomSwitchTile(
                            textStyle: textStyle,
                            name: S.of(context).chatMessages,
                            isSelected: messagesInChat,
                            onChanged: (p0) {
                              setState(() {
                                messagesInChat = !messagesInChat;
                              });
                            },
                          ),
                          const CustomDivider(),
                          CustomSwitchTile(
                            textStyle: textStyle,
                            name: S.of(context).newsEvents,
                            isSelected: newEvent,
                            onChanged: (p0) {
                              setState(() {
                                newEvent = !newEvent;
                              });
                            },
                          ),
                          const CustomDivider(),
                          TextWithArrow(
                              textStyle: textStyle,
                              name: S.of(context).chatBackground,
                              onPressed: () {}),
                        ],
                      ),
                    ),
                    Gap(
                      _paddingUnit * 2.h,
                    ),
                    ColoredContainer(
                      padding: const EdgeInsets.symmetric(
                          vertical: _paddingUnit, horizontal: _paddingUnit * 4),
                      child: Row(
                        children: [
                          Text(
                            S.of(context).applicationTheme,
                            style: textStyle.titleSmall!
                                .copyWith(color: AppColors.white),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    debugPrint("work");
                                  },
                                  style: IconButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: AppColors.blue,
                                    size: 34,
                                  )),
                              Text(
                                S.of(context).light,
                                style: textStyle.displaySmall!
                                    .copyWith(color: AppColors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Gap(
                      _paddingUnit * 2.h,
                    ),
                    ColoredContainer(
                        padding: const EdgeInsets.symmetric(
                            vertical: _paddingUnit,
                            horizontal: _paddingUnit * 4),
                        child: Column(
                          children: [
                            TextWithArrow(
                                textStyle: textStyle,
                                name: S.of(context).termsofUse,
                                onPressed: () {
                                  context.router.push(const PoliticsRoute());
                                }),
                            const CustomDivider(),
                            TextWithArrow(
                                textStyle: textStyle,
                                name: S.of(context).privacyPolicy,
                                onPressed: () {
                                  context.router.push(const RoolsRoute());
                                })
                          ],
                        )),
                    Gap(
                      _paddingUnit * 3.h,
                    ),
                    BlocListener<LogoutCubit, LogoutState>(
                      listener: (context, state) {
                        state.when(
                            initial: () => const SizedBox(),
                            loading: () {
                              debugPrint("loading");
                            },
                            success: (s) {
                              debugPrint("success");
                            },
                            failure: (e) {
                              debugPrint(e);
                            });
                      },
                      child: ExitBtn(
                        textStyle: textStyle,
                        onPressed: () {
                          context.read<LogoutCubit>().logout();
                          // context.router.popUntil(
                          //     (route) => route.settings.name == "LoginRoute");
                          _goToMain(context);
                        },
                        text: S.of(context).logOut,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToPersonalAcc(BuildContext context) {
    context.router.push(const PersonalAccountRoute());
  }

  void _goToEditProfile(BuildContext context) {
    context.router.push(const EditProfileRoute());
  }

  void _goToMain(BuildContext context) {
    context.router.push(const MainRoute());
  }

  void _gotToChangePass(BuildContext context) {
    context.router.push(const ChangePasswordRoute());
  }
}
