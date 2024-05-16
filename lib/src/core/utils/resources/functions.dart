import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_btn.dart';
import 'package:kindergarten_online/src/features/camera/data/menu_item_model.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/menu_card.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_float_btn.dart';

Future<dynamic> wrongLoginDialog(BuildContext context, TextTheme textStyle) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: const EdgeInsets.all(25),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).wrong,
                style: textStyle.displayLarge!.copyWith(color: AppColors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                S.of(context).checkLoginAndPass,
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
                      name: S.of(context).close))
            ],
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
            const EdgeInsets.only(left: 38, right: 38, top: 185, bottom: 33),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: MenuItem.items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: width / (height / 3.2),
                      crossAxisCount: 3,
                      mainAxisSpacing: 61,
                      crossAxisSpacing: 10),
                  itemBuilder: (_, index) {
                    return MenuCard(
                      textStyle: textStyle,
                      img: MenuItem.items[index].img,
                      title: MenuItem.items[index].name,
                      route: MenuItem.items[index].route,
                    );
                  }),
              const Spacer(),
              CustomFloatBtn(
                showButton: showButton,
                isToSwitch: false,
                icon: const Icon(Icons.close),
              )
            ],
          ),
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
