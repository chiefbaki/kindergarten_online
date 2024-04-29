import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';

class ContactCard extends StatelessWidget {
  final String name;
  final String children;
  final String img;
  const ContactCard(
      {super.key,
      required this.textStyle,
      required this.name,
      required this.children,
      required this.img});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(const ContactInfoRoute()),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(img),
              )),
          title: Text(name,
              style: textStyle.displayMedium!.copyWith(color: AppColors.black)),
          subtitle: RichText(
              text: TextSpan(
                  text: "Дети: ",
                  style:
                      textStyle.displaySmall!.copyWith(color: AppColors.grey),
                  children: [
                TextSpan(
                    text: " $children",
                    style:
                        textStyle.titleSmall!.copyWith(color: AppColors.black))
              ])),
        ),
      ),
    );
  }
}
