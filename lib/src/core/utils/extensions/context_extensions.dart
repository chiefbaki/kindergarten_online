import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_btn.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_float_btn.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/menu_card.dart';
import 'package:kindergarten_online/src/features/camera/data/menu_item_model.dart';

extension BuildContextEntension<T> on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
  Size get size => MediaQuery.of(this).size;

  Future<T?> showAlertDialog(
      {required bool showButton, List<String>? itemNames}) {
    return showDialog(
        context: this,
        builder: (builder) => AlertDialog(
              insetPadding: REdgeInsets.symmetric(horizontal: 15),
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              content: Container(
                height: height,
                width: width,
                padding: REdgeInsets.fromLTRB(0, 100, 0, 0),
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
                            img: MenuItem.items[index].img,
                            title: itemNames![index],
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
            ));
  }

  Future<T?> errorAlertDialog() {
    return showDialog(
        context: this,
        builder: (BuildContext context) {
          return AlertDialog(
            insetPadding: REdgeInsets.symmetric(vertical: 280, horizontal: 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding: const EdgeInsets.all(25),
            content: SizedBox(
              height: context.height,
              width: context.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).wrong,
                    style: context.textTheme.displayLarge!
                        .copyWith(color: AppColors.black),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    S.of(context).checkLoginAndPass,
                    style: context.textTheme.titleSmall,
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
            ),
          );
        });
  }
}
