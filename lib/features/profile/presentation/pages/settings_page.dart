import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/auth/presentation/logout_cubit/logout_cubit.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/colored_container.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_switch_tile.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/exit_btn.dart';
import 'package:kindergarten_online/features/widgets/text_with_arrow.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

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
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: S.of(context).Settings),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Column(
                  children: [
                    ColoredContainer(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWithArrow(
                              textStyle: textStyle,
                              onPressed: () {
                                context.router
                                    .push(const PersonalAccountRoute());
                              },
                              name: S.of(context).account,
                            ),
                            const CustomDivider(),
                            TextWithArrow(
                              textStyle: textStyle,
                              onPressed: () {
                                context.router.push(const EditProfileRoute());
                              },
                              name: S.of(context).editProfile,
                            ),
                            const CustomDivider(),
                            TextWithArrow(
                              textStyle: textStyle,
                              onPressed: () {},
                              name: S.of(context).changePassword,
                            ),
                            const CustomDivider(),
                            TextWithArrow(
                              textStyle: textStyle,
                              onPressed: () {},
                              name: "Изменить пароль",
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ColoredContainer(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 17, 20, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).notifications,
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(
                              height: 10.h,
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
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ColoredContainer(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
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
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ColoredContainer(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
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
                      ),
                    )),
                    SizedBox(
                      height: 15.h,
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
                          context.router.push(const MainRoute());
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
}
