import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/widgets/custom_btn.dart';
import 'package:kindergarten_online/src/features/camera/data/menu_item_model.dart';
import 'package:kindergarten_online/src/features/widgets/menu_card.dart';
import 'package:kindergarten_online/src/features/widgets/custom_float_btn.dart';

Future<dynamic> wrongLoginDialog(BuildContext context, TextTheme textStyle) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: const EdgeInsets.all(25),
          content: SizedBox(
            height: 145.h,
            width: 230.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ошибка",
                  style:
                      textStyle.displayLarge!.copyWith(color: AppColors.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Пожалуйста, введите корректные имя пользователя и пароль учётной записи. Оба поля зависят от корректности друг друга.",
                  style: textStyle.titleSmall,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                    child: CustomBtn(
                        onPressed: () {
                          // context.router.push(const RegistrRoute());
                          Navigator.pop(context);
                        },
                        name: "Закрыть"))
              ],
            ),
          ),
        );
      });
}

Future<dynamic> customBottomSheet(BuildContext context, TextTheme textStyle,
    {bool showButton = true}) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return showModalBottomSheet(
    isDismissible: false,
    enableDrag: false,
    context: context,
    isScrollControlled: true,
    backgroundColor: AppColors.white,
    builder: (BuildContext context) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 58, right: 58, top: 155, bottom: 40),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.73,
              child: GridView.builder(
                  itemCount: MenuItem.items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: width / (height / 1 / 2.2),
                      crossAxisCount: 3,
                      mainAxisSpacing: 85,
                      crossAxisSpacing: 30),
                  itemBuilder: (_, index) {
                    return MenuCard(
                      textStyle: textStyle,
                      img: MenuItem.items[index].img,
                      title: MenuItem.items[index].name,
                      route: MenuItem.items[index].route,
                    );
                  }),
            ),
            const Spacer(),
            CustomFloatBtn(
              showButton: showButton,
              isToSwitch: false,
              icon: const Icon(Icons.close),
            )
          ],
        ),
      );
    },
  );
}

// Reset phone sheets

// check state button

bool switcher = false;

void checkState(
    {required TextEditingController paramOne,
    required TextEditingController paramTwo,
    required TextEditingController paramThree,
    required void Function(void Function()) setState}) {
  setState(
    () {
      switcher = paramTwo.text.isNotEmpty &&
          paramTwo.text.isNotEmpty &&
          paramThree.text.isNotEmpty;
    },
  );
}
