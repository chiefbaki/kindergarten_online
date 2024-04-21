import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/colored_container.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_switch_tile.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/exit_btn.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/text_with_arrow.dart';
import 'package:kindergarten_online/features/widgets/custom_float_btn.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: "Настройки"),
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
                            Text(
                              "Аккаунт",
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const CustomDivider(),
                            TextWithArrow(
                              textStyle: textStyle,
                              onPressed: () {},
                              name: "Редактировать профиль",
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
                              "Уведомления",
                              style: textStyle.displaySmall!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const CustomDivider(),
                            CustomSwitchTile(
                              textStyle: textStyle,
                              name: "Сообщения в чате",
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
                              name: "Новое событие в ленте",
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
                                name: "Фон чата",
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
                              "Тема приложения",
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
                                  "Светлая",
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
                              name: "Правила использования",
                              onPressed: () {}),
                          const CustomDivider(),
                          TextWithArrow(
                              textStyle: textStyle,
                              name: "Политика конфиденциальности",
                              onPressed: () {})
                        ],
                      ),
                    )),
                    SizedBox(
                      height: 15.h,
                    ),
                    ExitBtn(
                      textStyle: textStyle,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const CustomFloatBtn(isToSwitch: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
